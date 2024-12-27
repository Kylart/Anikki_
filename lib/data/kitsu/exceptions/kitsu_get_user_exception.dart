class KitsuGetUserException implements Exception {
  final String cause = 'Could not retrieve user information from MyAnimeList';
  String? error;

  KitsuGetUserException({this.error});
}
