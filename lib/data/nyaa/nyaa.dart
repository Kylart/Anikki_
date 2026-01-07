import 'dart:async';
import 'dart:io';

import 'package:anitomy/anitomy.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:quiver/collection.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/data/nyaa/errors/nyaa_cannot_connect_exception.dart';

import 'errors/nyaa_no_result_exception.dart';
import 'models/models.dart';

export 'errors/nyaa_no_result_exception.dart';
export 'models/models.dart';

class Nyaa {
  final String baseUrl = 'nyaa.si';
  final Client client = Client();

  Map<String, List<TorrentSource>> resultsCache = LruMap(maximumSize: 10);

  // Should be enough for a few weeks of content.
  final int maxResults = 750;

  Future<List<TorrentSource>> search(String term) async {
    if (resultsCache.containsKey(term) && resultsCache[term]!.isNotEmpty) {
      return resultsCache[term]!;
    }

    final result = await _getAll(term: term);

    resultsCache[term] = result;
    Timer(
      const Duration(minutes: 5),
      () => resultsCache.remove(term),
    );

    result.sort((a, b) => int.parse(b.seeders).compareTo(int.parse(a.seeders)));

    return result;
  }

  HtmlResult _extractFromHtml({required String data, required String baseUrl}) {
    List<TorrentSource> torrents = [];
    Document document = parse(data);

    final rawTorrents = document.querySelectorAll('tr');

    if (rawTorrents.isEmpty) throw NyaaNoResultException();

    rawTorrents.sublist(1).forEach((element) {
      final Element nameElement = element.children[1].children.length == 2
          ? element.children[1].children[1]
          : element.children[1].children[0];
      final name = nameElement.attributes['title'].toString();

      torrents.add(
        TorrentSource(
          id:
              element.children[1].children[0].attributes['href']?.replaceAll(
                '/view/',
                '',
              ) ??
              '000',
          name: name,
          date:
              (int.parse(
                        (element.children[4].attributes['data-timestamp'] ??
                            '0'),
                      ) *
                      1000)
                  .toString(),
          filesize: element.children[3].text,
          magnet: element.children[2].children.last.attributes['href'] ?? '',
          torrent:
              baseUrl +
              (element.children[2].children.first.attributes['href'] ?? ''),
          seeders: element.children[5].text,
          leechers: element.children[6].text,
          completed: element.children[7].text,
          status: element.attributes['class'].toString(),
          parsed: Anitomy(inputString: name),
        ),
      );
    });

    final Element? pagination = document.querySelector('ul.pagination');
    final bool hasPagination = pagination != null;
    int maxPage = 1;

    if (hasPagination) {
      final int nbChildren = pagination.children.length;
      maxPage = int.parse(pagination.children[nbChildren - 2].text);
    }

    return HtmlResult(
      torrents: torrents,
      maxPage: maxPage,
    );
  }

  Future<HtmlResult> _searchPage({String? term, int? page}) async {
    final options = {
      'f': '0',
      'c': '1_0',
      'p': page?.toString() ?? '1',
      's': 'id',
      'o': 'desc',
      'q': term ?? '',
    };

    try {
      final uri = Uri.https(baseUrl, '/', options);
      final response = await get(uri);

      if (response.statusCode != 200) {
        throw Exception('Failed to load page: ${response.statusCode}');
      }

      return _extractFromHtml(
        data: response.body,
        baseUrl: baseUrl,
      );
    } on NyaaNoResultException {
      rethrow;
    } on HandshakeException {
      throw NyaaCannotConnectException(
        'Anikki cannot access Nyaa, it might be down or blocked by your connection.',
      );
    } catch (e) {
      logger.error('Error occurred while reaching Nyaa: $e');
      throw NyaaCannotConnectException(
        'Cannot access Nyaa.',
      );
    }
  }

  Future<List<TorrentSource>> _getAll({String? term}) async {
    final firstPage = await _searchPage(term: term);

    final results = firstPage.torrents;
    final maxPage = firstPage.maxPage;

    // Current page starts at 2 because we already did one research.
    int currentPage = 2;

    while (results.length < maxResults && currentPage < maxPage) {
      final current = await _searchPage(term: term, page: currentPage);

      results.addAll(current.torrents);

      ++currentPage;
    }

    return results;
  }
}
