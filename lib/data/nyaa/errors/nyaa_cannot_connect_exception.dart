class NyaaCannotConnectException implements Exception {
  final String message;

  NyaaCannotConnectException([this.message = "Unable to connect to Nyaa."]);

  @override
  String toString() => "NyaaCannotConnectException: $message";
}
