enum AuthMethod { login }

enum TorrentsMethod {
  info,

  /// For 5.0 and lower
  resume,
  pause,

  /// For 5.0 and higher
  stop,
  start,
  delete,
  add,

  toggleSequentialDownload,
  toggleFirstLastPiecePrio,
}
