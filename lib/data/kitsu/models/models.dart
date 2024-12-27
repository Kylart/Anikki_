import 'package:anikki/data/data.dart';
import 'package:anikki/data/kitsu/models/anime_media.fragment.graphql.dart';

export 'current_profile.query.graphql.dart';
export 'library.query.graphql.dart';
export 'update_library_entry.mutation.graphql.dart';

typedef KitsuUser = Query$KitsuCurrentProfile$currentProfile;
typedef KitsuMediaInfo = Fragment$kitsuAnimeMedia$$Anime;
