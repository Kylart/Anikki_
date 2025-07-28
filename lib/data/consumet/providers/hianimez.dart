import 'dart:convert';

import 'package:anikki/data/consumet/extractors/extractors.dart';
import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';

import 'package:anikki/core/core.dart';

import '../models/models.dart';

class Hianimez implements AnimeProvider {
  final baseUrl = 'https://hianimez.to';

  final client = Client();

  String get ajaxUrl => '$baseUrl/ajax';
  String get searchUrl => '$baseUrl/search';

  String? retrieveServerId(
    Document document,
    int index, {
    SubOrDub sub = SubOrDub.sub,
  }) {
    final category = sub == SubOrDub.sub ? 'sub' : 'dub';

    return document
        .querySelectorAll(
            '.ps_-block.ps_-block-sub.servers-$category > .ps__-list .server-item')
        .map(
          (element) =>
              element.attributes['data-server-id'] == '$index' ? element : null,
        )
        .whereType<Element>()
        .firstOrNull
        ?.attributes['data-id'];
  }

  @override
  Future<List<AnimeResult>> search(
    String query, {
    bool dubbed = false,
  }) async {
    final uri = Uri.parse(searchUrl).replace(
      queryParameters: {
        'keyword': query,
        'page': '1',
        'sort': 'default',
      },
    );

    final res = await client.get(uri);
    final page = parse(res.body);

    final selector = '#main-content .tab-content .film_list-wrap .flw-item';

    final results = page.querySelectorAll(selector).map<AnimeResult>(
          (element) => AnimeResult(
            id: element
                .querySelector('.film-detail .film-name .dynamic-name')
                ?.attributes['href']
                ?.substring(1)
                .split('?ref=search')
                .firstOrNull,
            title: element
                .querySelector('.film-detail .film-name .dynamic-name')
                ?.text
                .trim(),
          ),
        );

    return results.toList();
  }

  @override
  Future<List<AnimeEpisode>> fetchAnimeEpisodes(String id) async {
    final headers = {
      'X-Requested-With': 'XMLHttpRequest',
      'Referer': '$baseUrl/watch/$id',
      'Accept': 'gzip, deflate, br',
      "User-Agent":
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',
      "Accept-Encoding":
          'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
    };

    final episodesAjax = await client.get(
      Uri.parse('$ajaxUrl/v2/episode/list/${id.split('-').last}'),
      headers: headers,
    );
    final document = parse(json.decode(episodesAjax.body)['html']);

    return document
        .querySelectorAll('.detail-infor-content .ss-list a')
        .map(
          (element) => AnimeEpisode(
            id: element.attributes['href']?.split('/').lastOrNull ?? '',
            mediaId: id,
            url: '$baseUrl/${element.attributes['href']}',
            number: int.tryParse(element.attributes['data-number'] ?? ''),
            title: element.attributes['title']?.trim(),
          ),
        )
        .toList();
  }

  @override
  Future<AnimeSource> fetchEpisodeSources(
    AnimeEpisode episode, {
    StreamingServers server = StreamingServers.rapidcloud,
    bool dubbed = false,
  }) {
    return _fetchSources(
      episode.id,
      server: server,
      subOrDub: dubbed ? SubOrDub.dub : SubOrDub.sub,
    );
  }

  Future<AnimeSource> _fetchSources(
    String episodeId, {
    StreamingServers server = StreamingServers.rapidcloud,
    SubOrDub subOrDub = SubOrDub.sub,
  }) async {
    final epId = Uri.parse('$baseUrl/watch/$episodeId').toString();
    final category = subOrDub == SubOrDub.sub ? 'sub' : 'dub';

    return AnimeSource(
      headers: {
        'Referer': 'https://megaplay.buzz/stream/s-2/$episodeId/$category',
      },
      sources: await MegaCloud().extract(Uri.parse(epId)),
      download: '',
    );
  }
}
