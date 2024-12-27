class KitsuUpdateListException implements Exception {
  String? error;
  String? mediaId;

  String get cause =>
      'Could not update user list entry with ID $mediaId on Kitsu';

  KitsuUpdateListException({
    this.error,
    this.mediaId,
  });
}
