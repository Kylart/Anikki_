import 'dart:convert';

import 'package:graphql/client.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/domain/user_repository.dart';

final WatchListProvider _provider = WatchListProvider.kitsu;
String get _providerTitle => _provider.title;

const kitsuApiBaseUrl = 'https://kitsu.io/api';

GraphQLClient getKitsuClient() {
  final httpLink = HttpLink(
    '$kitsuApiBaseUrl/graphql',
  );

  final authLink = AuthLink(
    getToken: () async {
      final box = await Hive.openBox(UserRepository.boxName);
      final String? jsonToken = box.get(
        UserRepository.tokenKey[_provider],
      );

      if (jsonToken == null) {
        throw Exception('No token for $_providerTitle');
      }

      final parsedToken = jsonDecode(jsonToken);

      final String tokenType = parsedToken['token_type'];
      final int expiresIn = parsedToken['expires_in'];
      String accessToken = parsedToken['access_token'];
      final String refreshToken = parsedToken['refresh_token'];
      final int issuedAt = parsedToken['issued_at'];
      final int expiresAt = issuedAt + expiresIn;

      final now = DateTime.now().millisecondsSinceEpoch;

      if (expiresAt < now + (1000 * 10)) {
        accessToken = await refreshAccessToken(refreshToken);
      }

      return '$tokenType $accessToken';
    },
  );

  final link = authLink.concat(httpLink);

  return GraphQLClient(
    link: link,
    // The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
  );
}

Future<String> refreshAccessToken(String refreshToken) async {
  logger.info('Refreshing $_providerTitle credentials...');

  final response = await post(
    Uri(
      host: 'kitsu.io',
      path: 'api/oauth/token',
      scheme: 'https',
    ),
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: {
      'refresh_token': refreshToken,
      'grant_type': "refresh_token",
    },
  );

  final parsedBody = jsonDecode(response.body);
  parsedBody['issued_at'] = DateTime.now().millisecondsSinceEpoch;

  final boxKey = UserRepository.tokenKey[_provider];
  final box = await Hive.openBox(UserRepository.boxName);
  await box.put(boxKey, jsonEncode(parsedBody));

  logger.info('Successfully refreshed $_providerTitle credentials!');

  return parsedBody['access_token'];
}
