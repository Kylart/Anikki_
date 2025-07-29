import 'package:anikki/data/data.dart';

/// Repository that handles user information related data (for now only Anilist)
class UserInformationRepository {
  const UserInformationRepository(this.anilist);

  /// The [Anilist] object to use to interact with Anilist.
  final Anilist anilist;
}
