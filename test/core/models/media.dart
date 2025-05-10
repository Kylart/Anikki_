import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:anikki/core/models/media/media.dart';
import 'package:anikki/data/data.dart';

import '../../fixtures/anilist.dart';
import '../../fixtures/tmdb.dart';

void main() {
  group('Media.fromNames', () {
    late MockAnilist mockAnilist;
    late MockTmdb mockTmdb;

    setUp(() {
      mockAnilist = MockAnilist();
      mockTmdb = MockTmdb();
    });

    test('should return a list of Media objects with correct data', () async {
      // Arrange
      final names = ['Title1', 'Title2'];
      final infos = <String, Fragment$media>{
        names[0]: media.anilistInfo!,
        names[1]: media.anilistInfo!.copyWith(
          title: Fragment$media$title(userPreferred: 'Title2'),
          id: 2,
        ),
      };

      when(() => mockAnilist.infoFromMultiple(any(that: isA<List<String>>())))
          .thenAnswer(
        (_) async => infos,
      );

      for (final name in names) {
        when(() => mockAnilist.getInfoFromInfo(name, infos))
            .thenReturn(infos[name]!);
      }

      when(() => mockTmdb.getDetails(names.first)).thenAnswer(
        (_) async => TmdbTvDetails(id: 101, name: 'TMDB Title1'),
      );
      when(() => mockTmdb.getDetails(names.elementAt(1))).thenAnswer(
        (_) async => TmdbTvDetails(id: 102, name: 'TMDB Title2'),
      );

      // Act
      final result = await Media.fromNames(
        names,
        anilist: mockAnilist,
        tmdb: mockTmdb,
      );

      // Assert
      expect(result.length, names.length);
      expect(result[0].title, infos[names[0]]?.title?.userPreferred);
      expect(result[0].tmdbInfo?.name, 'TMDB Title1');
      expect(result[1].title, infos[names[1]]?.title?.userPreferred);
      expect(result[1].tmdbInfo?.name, 'TMDB Title2');
    });

    test('should handle errors gracefully and return empty Media objects',
        () async {
      // Arrange
      final names = ['Title1', 'Title2'];

      when(() => mockAnilist.infoFromMultiple(any(that: isA<List<String>>())))
          .thenThrow(Exception('Anilist error'));
      when(() => mockTmdb.getDetails('ParsedTitle1'))
          .thenThrow(Exception('TMDB error'));

      // Act
      final result = await Media.fromNames(
        names,
        anilist: mockAnilist,
        tmdb: mockTmdb,
      );

      // Assert
      expect(result.length, names.length);
      expect(result[0].isEmpty, true);
      expect(result[1].isEmpty, true);
    });
  });
}
