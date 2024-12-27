import 'package:anikki/data/kitsu/models/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/data/data.dart';

export 'exceptions/exceptions.dart';
export 'models/models.dart';

class Kitsu {
  Kitsu(this.client);

  final GraphQLClient client;

  /// Retrieve current user information
  Future<KitsuUser> getMe() async {
    try {
      final response = await client.query$KitsuCurrentProfile();

      if (response.hasException) {
        throw KitsuGetUserException(error: response.exception.toString());
      }

      if (response.parsedData == null ||
          response.parsedData?.currentProfile == null) {
        throw 'Could not find authenticated user';
      }

      return response.parsedData!.currentProfile!;
    } catch (e) {
      throw KitsuGetUserException(error: e.toString());
    }
  }

  /// Update an entry on Kitsu
  Future<bool> updateEntry({
    required String mediaId,
    required int episode,
  }) async {
    try {
      logger.info('Updating Kitsu list', {
        'mediaId': mediaId,
        'episode': episode,
      });

      await client.mutate$KitsuUpdateLibraryEntry(
        Options$Mutation$KitsuUpdateLibraryEntry(
          variables: Variables$Mutation$KitsuUpdateLibraryEntry(
            progress: Input$LibraryEntryUpdateProgressByMediaInput(
              mediaId: mediaId,
              mediaType: Enum$MediaTypeEnum.ANIME,
              progress: episode,
            ),
          ),
        ),
      );

      return true;
    } catch (e) {
      logger.error('Could not update Kitsu list', e);
      throw KitsuUpdateListException(
        mediaId: mediaId,
      );
    }
  }

  /// Retrieve Watch list on Kitsu for the current user only
  Future<WatchList> getWatchList() async {
    var result = WatchList(
      provider: WatchListProvider.kitsu,
    );

    try {
      String? cursor;
      int limit = 500;

      do {
        final response = await client.query$KitsuLibrary(
          Options$Query$KitsuLibrary(
            errorPolicy: ErrorPolicy.all,
            variables: Variables$Query$KitsuLibrary(
              limit: limit,
            ),
          ),
        );

        final errors = response.exception?.graphqlErrors
            .where(
              (error) =>
                  error.message !=
                  'Cannot return null for non-nullable field TitlesList.canonical',
            )
            .toSet();

        if (errors?.isNotEmpty == true) {
          throw errors!.first;
        }

        final data = response.parsedData?.currentProfile?.$library.all;
        final entries = data?.nodes ?? [];
        final pageInfo = data?.pageInfo;

        cursor = pageInfo?.hasNextPage == true ? pageInfo?.endCursor : null;

        for (final entry in entries) {
          if (entry == null) continue;

          final mediaEntry = MediaListEntry(
            media: Media(
              kitsuInfo: KitsuMediaInfo.fromJson(
                entry.media.toJson(),
              ),
            ),
            progress: entry.progress,
            notes: entry.notes,
            score: entry.rating?.toDouble() ?? 0,
            updatedAt: entry.progressedAt != null
                ? DateTime.parse(entry.progressedAt!).millisecondsSinceEpoch
                : null,
            status: switch (entry.status) {
              Enum$LibraryEntryStatusEnum.CURRENT =>
                Enum$MediaListStatus.CURRENT,
              Enum$LibraryEntryStatusEnum.PLANNED =>
                Enum$MediaListStatus.PLANNING,
              Enum$LibraryEntryStatusEnum.COMPLETED =>
                Enum$MediaListStatus.COMPLETED,
              Enum$LibraryEntryStatusEnum.ON_HOLD =>
                Enum$MediaListStatus.PAUSED,
              Enum$LibraryEntryStatusEnum.DROPPED =>
                Enum$MediaListStatus.DROPPED,
              Enum$LibraryEntryStatusEnum.$unknown =>
                Enum$MediaListStatus.$unknown,
            },
          );

          if (entry.reconsuming) {
            result = result.copyWith(
              repeating: [
                ...result.repeating,
                mediaEntry.copyWith(
                  status: Enum$MediaListStatus.REPEATING,
                ),
              ],
            );

            continue;
          }

          switch (entry.status) {
            case Enum$LibraryEntryStatusEnum.CURRENT:
              result = result.copyWith(
                current: [
                  ...result.current,
                  mediaEntry,
                ],
              );
              break;
            case Enum$LibraryEntryStatusEnum.PLANNED:
              result = result.copyWith(
                planning: [
                  ...result.planning,
                  mediaEntry,
                ],
              );
              break;
            case Enum$LibraryEntryStatusEnum.COMPLETED:
              result = result.copyWith(
                completed: [
                  ...result.completed,
                  mediaEntry,
                ],
              );
              break;
            case Enum$LibraryEntryStatusEnum.ON_HOLD:
              result = result.copyWith(
                paused: [
                  ...result.paused,
                  mediaEntry,
                ],
              );
              break;
            case Enum$LibraryEntryStatusEnum.DROPPED:
              result = result.copyWith(
                dropped: [
                  ...result.dropped,
                  mediaEntry,
                ],
              );
              break;
            case Enum$LibraryEntryStatusEnum.$unknown:
              break;
          }
        }
      } while (cursor != null);
    } catch (e) {
      logger.error(
        'Error while querying for animelist on Kitsu ',
        e,
      );
    }

    return result;
  }
}
