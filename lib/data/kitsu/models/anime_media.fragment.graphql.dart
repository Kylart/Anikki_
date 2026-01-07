import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Fragment$kitsuAnimeMedia {
  Fragment$kitsuAnimeMedia({required this.$__typename});

  factory Fragment$kitsuAnimeMedia.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Anime":
        return Fragment$kitsuAnimeMedia$$Anime.fromJson(json);

      case "Manga":
        return Fragment$kitsuAnimeMedia$$Manga.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Fragment$kitsuAnimeMedia($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia
    on Fragment$kitsuAnimeMedia {
  CopyWith$Fragment$kitsuAnimeMedia<Fragment$kitsuAnimeMedia> get copyWith =>
      CopyWith$Fragment$kitsuAnimeMedia(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Fragment$kitsuAnimeMedia$$Anime) anime,
    required _T Function(Fragment$kitsuAnimeMedia$$Manga) manga,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Anime":
        return anime(this as Fragment$kitsuAnimeMedia$$Anime);

      case "Manga":
        return manga(this as Fragment$kitsuAnimeMedia$$Manga);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$kitsuAnimeMedia$$Anime)? anime,
    _T Function(Fragment$kitsuAnimeMedia$$Manga)? manga,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Anime":
        if (anime != null) {
          return anime(this as Fragment$kitsuAnimeMedia$$Anime);
        } else {
          return orElse();
        }

      case "Manga":
        if (manga != null) {
          return manga(this as Fragment$kitsuAnimeMedia$$Manga);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$kitsuAnimeMedia<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia(
    Fragment$kitsuAnimeMedia instance,
    TRes Function(Fragment$kitsuAnimeMedia) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia;

  factory CopyWith$Fragment$kitsuAnimeMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia _instance;

  final TRes Function(Fragment$kitsuAnimeMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Fragment$kitsuAnimeMedia(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

const fragmentDefinitionkitsuAnimeMedia = FragmentDefinitionNode(
  name: NameNode(value: 'kitsuAnimeMedia'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'Media'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      InlineFragmentNode(
        typeCondition: TypeConditionNode(
          on: NamedTypeNode(
            name: NameNode(value: 'Anime'),
            isNonNull: false,
          ),
        ),
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'startDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'endDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'slug'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'status'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'season'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'episodeCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'subtype'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'youtubeTrailerVideoId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'titles'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'original'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'canonical'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'alternatives'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'translated'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'categories'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '5'),
                ),
              ],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'slug'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'episodes'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '200'),
                ),
              ],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'number'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'thumbnail'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'original'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(
                                  selections: [
                                    FieldNode(
                                      name: NameNode(value: 'url'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null,
                                    ),
                                    FieldNode(
                                      name: NameNode(value: '__typename'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null,
                                    ),
                                  ],
                                ),
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ],
                          ),
                        ),
                        FieldNode(
                          name: NameNode(value: 'titles'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'canonical'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ],
                          ),
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'posterImage'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'original'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'url'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'bannerImage'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'original'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'url'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: '__typename'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentkitsuAnimeMedia = DocumentNode(
  definitions: [
    fragmentDefinitionkitsuAnimeMedia,
  ],
);

extension ClientExtension$Fragment$kitsuAnimeMedia on graphql.GraphQLClient {
  void writeFragment$kitsuAnimeMedia({
    required Fragment$kitsuAnimeMedia data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'kitsuAnimeMedia',
        document: documentNodeFragmentkitsuAnimeMedia,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$kitsuAnimeMedia? readFragment$kitsuAnimeMedia({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'kitsuAnimeMedia',
          document: documentNodeFragmentkitsuAnimeMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$kitsuAnimeMedia.fromJson(result);
  }
}

class Fragment$kitsuAnimeMedia$$Anime implements Fragment$kitsuAnimeMedia {
  Fragment$kitsuAnimeMedia$$Anime({
    required this.id,
    this.startDate,
    this.endDate,
    required this.slug,
    required this.status,
    this.season,
    this.episodeCount,
    required this.subtype,
    this.youtubeTrailerVideoId,
    required this.titles,
    required this.categories,
    required this.episodes,
    this.posterImage,
    this.bannerImage,
    this.$__typename = 'Anime',
  });

  factory Fragment$kitsuAnimeMedia$$Anime.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$slug = json['slug'];
    final l$status = json['status'];
    final l$season = json['season'];
    final l$episodeCount = json['episodeCount'];
    final l$subtype = json['subtype'];
    final l$youtubeTrailerVideoId = json['youtubeTrailerVideoId'];
    final l$titles = json['titles'];
    final l$categories = json['categories'];
    final l$episodes = json['episodes'];
    final l$posterImage = json['posterImage'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime(
      id: (l$id as String),
      startDate: (l$startDate as String?),
      endDate: (l$endDate as String?),
      slug: (l$slug as String),
      status: fromJson$Enum$ReleaseStatusEnum((l$status as String)),
      season: l$season == null
          ? null
          : fromJson$Enum$ReleaseSeasonEnum((l$season as String)),
      episodeCount: (l$episodeCount as int?),
      subtype: fromJson$Enum$AnimeSubtypeEnum((l$subtype as String)),
      youtubeTrailerVideoId: (l$youtubeTrailerVideoId as String?),
      titles: Fragment$kitsuAnimeMedia$$Anime$titles.fromJson(
        (l$titles as Map<String, dynamic>),
      ),
      categories: Fragment$kitsuAnimeMedia$$Anime$categories.fromJson(
        (l$categories as Map<String, dynamic>),
      ),
      episodes: Fragment$kitsuAnimeMedia$$Anime$episodes.fromJson(
        (l$episodes as Map<String, dynamic>),
      ),
      posterImage: l$posterImage == null
          ? null
          : Fragment$kitsuAnimeMedia$$Anime$posterImage.fromJson(
              (l$posterImage as Map<String, dynamic>),
            ),
      bannerImage: l$bannerImage == null
          ? null
          : Fragment$kitsuAnimeMedia$$Anime$bannerImage.fromJson(
              (l$bannerImage as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? startDate;

  final String? endDate;

  final String slug;

  final Enum$ReleaseStatusEnum status;

  final Enum$ReleaseSeasonEnum? season;

  final int? episodeCount;

  final Enum$AnimeSubtypeEnum subtype;

  final String? youtubeTrailerVideoId;

  final Fragment$kitsuAnimeMedia$$Anime$titles titles;

  final Fragment$kitsuAnimeMedia$$Anime$categories categories;

  final Fragment$kitsuAnimeMedia$$Anime$episodes episodes;

  final Fragment$kitsuAnimeMedia$$Anime$posterImage? posterImage;

  final Fragment$kitsuAnimeMedia$$Anime$bannerImage? bannerImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate;
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ReleaseStatusEnum(l$status);
    final l$season = season;
    _resultData['season'] = l$season == null
        ? null
        : toJson$Enum$ReleaseSeasonEnum(l$season);
    final l$episodeCount = episodeCount;
    _resultData['episodeCount'] = l$episodeCount;
    final l$subtype = subtype;
    _resultData['subtype'] = toJson$Enum$AnimeSubtypeEnum(l$subtype);
    final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
    _resultData['youtubeTrailerVideoId'] = l$youtubeTrailerVideoId;
    final l$titles = titles;
    _resultData['titles'] = l$titles.toJson();
    final l$categories = categories;
    _resultData['categories'] = l$categories.toJson();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes.toJson();
    final l$posterImage = posterImage;
    _resultData['posterImage'] = l$posterImage?.toJson();
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$slug = slug;
    final l$status = status;
    final l$season = season;
    final l$episodeCount = episodeCount;
    final l$subtype = subtype;
    final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
    final l$titles = titles;
    final l$categories = categories;
    final l$episodes = episodes;
    final l$posterImage = posterImage;
    final l$bannerImage = bannerImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$startDate,
      l$endDate,
      l$slug,
      l$status,
      l$season,
      l$episodeCount,
      l$subtype,
      l$youtubeTrailerVideoId,
      l$titles,
      l$categories,
      l$episodes,
      l$posterImage,
      l$bannerImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$episodeCount = episodeCount;
    final lOther$episodeCount = other.episodeCount;
    if (l$episodeCount != lOther$episodeCount) {
      return false;
    }
    final l$subtype = subtype;
    final lOther$subtype = other.subtype;
    if (l$subtype != lOther$subtype) {
      return false;
    }
    final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
    final lOther$youtubeTrailerVideoId = other.youtubeTrailerVideoId;
    if (l$youtubeTrailerVideoId != lOther$youtubeTrailerVideoId) {
      return false;
    }
    final l$titles = titles;
    final lOther$titles = other.titles;
    if (l$titles != lOther$titles) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != lOther$categories) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$posterImage = posterImage;
    final lOther$posterImage = other.posterImage;
    if (l$posterImage != lOther$posterImage) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime
    on Fragment$kitsuAnimeMedia$$Anime {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime<Fragment$kitsuAnimeMedia$$Anime>
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime(
    Fragment$kitsuAnimeMedia$$Anime instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime;

  TRes call({
    String? id,
    String? startDate,
    String? endDate,
    String? slug,
    Enum$ReleaseStatusEnum? status,
    Enum$ReleaseSeasonEnum? season,
    int? episodeCount,
    Enum$AnimeSubtypeEnum? subtype,
    String? youtubeTrailerVideoId,
    Fragment$kitsuAnimeMedia$$Anime$titles? titles,
    Fragment$kitsuAnimeMedia$$Anime$categories? categories,
    Fragment$kitsuAnimeMedia$$Anime$episodes? episodes,
    Fragment$kitsuAnimeMedia$$Anime$posterImage? posterImage,
    Fragment$kitsuAnimeMedia$$Anime$bannerImage? bannerImage,
    String? $__typename,
  });
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles<TRes> get titles;
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories<TRes> get categories;
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes> get episodes;
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes> get posterImage;
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes> get bannerImage;
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? slug = _undefined,
    Object? status = _undefined,
    Object? season = _undefined,
    Object? episodeCount = _undefined,
    Object? subtype = _undefined,
    Object? youtubeTrailerVideoId = _undefined,
    Object? titles = _undefined,
    Object? categories = _undefined,
    Object? episodes = _undefined,
    Object? posterImage = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      startDate: startDate == _undefined
          ? _instance.startDate
          : (startDate as String?),
      endDate: endDate == _undefined ? _instance.endDate : (endDate as String?),
      slug: slug == _undefined || slug == null
          ? _instance.slug
          : (slug as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$ReleaseStatusEnum),
      season: season == _undefined
          ? _instance.season
          : (season as Enum$ReleaseSeasonEnum?),
      episodeCount: episodeCount == _undefined
          ? _instance.episodeCount
          : (episodeCount as int?),
      subtype: subtype == _undefined || subtype == null
          ? _instance.subtype
          : (subtype as Enum$AnimeSubtypeEnum),
      youtubeTrailerVideoId: youtubeTrailerVideoId == _undefined
          ? _instance.youtubeTrailerVideoId
          : (youtubeTrailerVideoId as String?),
      titles: titles == _undefined || titles == null
          ? _instance.titles
          : (titles as Fragment$kitsuAnimeMedia$$Anime$titles),
      categories: categories == _undefined || categories == null
          ? _instance.categories
          : (categories as Fragment$kitsuAnimeMedia$$Anime$categories),
      episodes: episodes == _undefined || episodes == null
          ? _instance.episodes
          : (episodes as Fragment$kitsuAnimeMedia$$Anime$episodes),
      posterImage: posterImage == _undefined
          ? _instance.posterImage
          : (posterImage as Fragment$kitsuAnimeMedia$$Anime$posterImage?),
      bannerImage: bannerImage == _undefined
          ? _instance.bannerImage
          : (bannerImage as Fragment$kitsuAnimeMedia$$Anime$bannerImage?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles<TRes> get titles {
    final local$titles = _instance.titles;
    return CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles(
      local$titles,
      (e) => call(titles: e),
    );
  }

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories<TRes> get categories {
    final local$categories = _instance.categories;
    return CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories(
      local$categories,
      (e) => call(categories: e),
    );
  }

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes(
      local$episodes,
      (e) => call(episodes: e),
    );
  }

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes> get posterImage {
    final local$posterImage = _instance.posterImage;
    return local$posterImage == null
        ? CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage(
            local$posterImage,
            (e) => call(posterImage: e),
          );
  }

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes> get bannerImage {
    final local$bannerImage = _instance.bannerImage;
    return local$bannerImage == null
        ? CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage(
            local$bannerImage,
            (e) => call(bannerImage: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime(this._res);

  TRes _res;

  call({
    String? id,
    String? startDate,
    String? endDate,
    String? slug,
    Enum$ReleaseStatusEnum? status,
    Enum$ReleaseSeasonEnum? season,
    int? episodeCount,
    Enum$AnimeSubtypeEnum? subtype,
    String? youtubeTrailerVideoId,
    Fragment$kitsuAnimeMedia$$Anime$titles? titles,
    Fragment$kitsuAnimeMedia$$Anime$categories? categories,
    Fragment$kitsuAnimeMedia$$Anime$episodes? episodes,
    Fragment$kitsuAnimeMedia$$Anime$posterImage? posterImage,
    Fragment$kitsuAnimeMedia$$Anime$bannerImage? bannerImage,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles<TRes> get titles =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles.stub(_res);

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories<TRes> get categories =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories.stub(_res);

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes> get episodes =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes.stub(_res);

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes> get posterImage =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage.stub(_res);

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes> get bannerImage =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage.stub(_res);
}

class Fragment$kitsuAnimeMedia$$Anime$titles {
  Fragment$kitsuAnimeMedia$$Anime$titles({
    this.original,
    required this.canonical,
    this.alternatives,
    this.translated,
    this.$__typename = 'TitlesList',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$titles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$original = json['original'];
    final l$canonical = json['canonical'];
    final l$alternatives = json['alternatives'];
    final l$translated = json['translated'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$titles(
      original: (l$original as String?),
      canonical: (l$canonical as String),
      alternatives: (l$alternatives as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      translated: (l$translated as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? original;

  final String canonical;

  final List<String>? alternatives;

  final String? translated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$original = original;
    _resultData['original'] = l$original;
    final l$canonical = canonical;
    _resultData['canonical'] = l$canonical;
    final l$alternatives = alternatives;
    _resultData['alternatives'] = l$alternatives?.map((e) => e).toList();
    final l$translated = translated;
    _resultData['translated'] = l$translated;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$original = original;
    final l$canonical = canonical;
    final l$alternatives = alternatives;
    final l$translated = translated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$original,
      l$canonical,
      l$alternatives == null
          ? null
          : Object.hashAll(l$alternatives.map((v) => v)),
      l$translated,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$titles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$original = original;
    final lOther$original = other.original;
    if (l$original != lOther$original) {
      return false;
    }
    final l$canonical = canonical;
    final lOther$canonical = other.canonical;
    if (l$canonical != lOther$canonical) {
      return false;
    }
    final l$alternatives = alternatives;
    final lOther$alternatives = other.alternatives;
    if (l$alternatives != null && lOther$alternatives != null) {
      if (l$alternatives.length != lOther$alternatives.length) {
        return false;
      }
      for (int i = 0; i < l$alternatives.length; i++) {
        final l$alternatives$entry = l$alternatives[i];
        final lOther$alternatives$entry = lOther$alternatives[i];
        if (l$alternatives$entry != lOther$alternatives$entry) {
          return false;
        }
      }
    } else if (l$alternatives != lOther$alternatives) {
      return false;
    }
    final l$translated = translated;
    final lOther$translated = other.translated;
    if (l$translated != lOther$translated) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$titles
    on Fragment$kitsuAnimeMedia$$Anime$titles {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles<
    Fragment$kitsuAnimeMedia$$Anime$titles
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles(
    Fragment$kitsuAnimeMedia$$Anime$titles instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$titles) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$titles;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$titles;

  TRes call({
    String? original,
    String? canonical,
    List<String>? alternatives,
    String? translated,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$titles<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$titles(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$titles _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$titles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? original = _undefined,
    Object? canonical = _undefined,
    Object? alternatives = _undefined,
    Object? translated = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$titles(
      original: original == _undefined
          ? _instance.original
          : (original as String?),
      canonical: canonical == _undefined || canonical == null
          ? _instance.canonical
          : (canonical as String),
      alternatives: alternatives == _undefined
          ? _instance.alternatives
          : (alternatives as List<String>?),
      translated: translated == _undefined
          ? _instance.translated
          : (translated as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$titles<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$titles<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$titles(this._res);

  TRes _res;

  call({
    String? original,
    String? canonical,
    List<String>? alternatives,
    String? translated,
    String? $__typename,
  }) => _res;
}

class Fragment$kitsuAnimeMedia$$Anime$categories {
  Fragment$kitsuAnimeMedia$$Anime$categories({
    this.nodes,
    this.$__typename = 'CategoryConnection',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$categories.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$categories(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$kitsuAnimeMedia$$Anime$categories$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$kitsuAnimeMedia$$Anime$categories$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$categories ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$categories
    on Fragment$kitsuAnimeMedia$$Anime$categories {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories<
    Fragment$kitsuAnimeMedia$$Anime$categories
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories(
    Fragment$kitsuAnimeMedia$$Anime$categories instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$categories) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$categories;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$categories;

  TRes call({
    List<Fragment$kitsuAnimeMedia$$Anime$categories$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Fragment$kitsuAnimeMedia$$Anime$categories$nodes?>? Function(
      Iterable<
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<
          Fragment$kitsuAnimeMedia$$Anime$categories$nodes
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$categories<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$categories(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$categories _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$categories(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$kitsuAnimeMedia$$Anime$categories$nodes?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Fragment$kitsuAnimeMedia$$Anime$categories$nodes?>? Function(
      Iterable<
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<
          Fragment$kitsuAnimeMedia$$Anime$categories$nodes
        >?
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$categories<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$categories(this._res);

  TRes _res;

  call({
    List<Fragment$kitsuAnimeMedia$$Anime$categories$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Fragment$kitsuAnimeMedia$$Anime$categories$nodes {
  Fragment$kitsuAnimeMedia$$Anime$categories$nodes({
    required this.slug,
    this.$__typename = 'Category',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$categories$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$slug = json['slug'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$categories$nodes(
      slug: (l$slug as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String slug;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$slug = slug;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$slug,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$categories$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$categories$nodes
    on Fragment$kitsuAnimeMedia$$Anime$categories$nodes {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<
    Fragment$kitsuAnimeMedia$$Anime$categories$nodes
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes(
    Fragment$kitsuAnimeMedia$$Anime$categories$nodes instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$categories$nodes) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$categories$nodes;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$categories$nodes;

  TRes call({
    String? slug,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$categories$nodes(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$categories$nodes _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$categories$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? slug = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$categories$nodes(
      slug: slug == _undefined || slug == null
          ? _instance.slug
          : (slug as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$categories$nodes<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$categories$nodes(this._res);

  TRes _res;

  call({
    String? slug,
    String? $__typename,
  }) => _res;
}

class Fragment$kitsuAnimeMedia$$Anime$episodes {
  Fragment$kitsuAnimeMedia$$Anime$episodes({
    this.nodes,
    this.$__typename = 'EpisodeConnection',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$episodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$episodes(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$kitsuAnimeMedia$$Anime$episodes$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$kitsuAnimeMedia$$Anime$episodes$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$episodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$episodes
    on Fragment$kitsuAnimeMedia$$Anime$episodes {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes<
    Fragment$kitsuAnimeMedia$$Anime$episodes
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes(
    Fragment$kitsuAnimeMedia$$Anime$episodes instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes;

  TRes call({
    List<Fragment$kitsuAnimeMedia$$Anime$episodes$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Fragment$kitsuAnimeMedia$$Anime$episodes$nodes?>? Function(
      Iterable<
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<
          Fragment$kitsuAnimeMedia$$Anime$episodes$nodes
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$episodes _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$episodes(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$kitsuAnimeMedia$$Anime$episodes$nodes?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Fragment$kitsuAnimeMedia$$Anime$episodes$nodes?>? Function(
      Iterable<
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<
          Fragment$kitsuAnimeMedia$$Anime$episodes$nodes
        >?
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes(this._res);

  TRes _res;

  call({
    List<Fragment$kitsuAnimeMedia$$Anime$episodes$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Fragment$kitsuAnimeMedia$$Anime$episodes$nodes {
  Fragment$kitsuAnimeMedia$$Anime$episodes$nodes({
    required this.number,
    this.thumbnail,
    required this.titles,
    this.$__typename = 'Episode',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$episodes$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$number = json['number'];
    final l$thumbnail = json['thumbnail'];
    final l$titles = json['titles'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$episodes$nodes(
      number: (l$number as int),
      thumbnail: l$thumbnail == null
          ? null
          : Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail.fromJson(
              (l$thumbnail as Map<String, dynamic>),
            ),
      titles: Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles.fromJson(
        (l$titles as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int number;

  final Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail? thumbnail;

  final Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles titles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$number = number;
    _resultData['number'] = l$number;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail?.toJson();
    final l$titles = titles;
    _resultData['titles'] = l$titles.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$number = number;
    final l$thumbnail = thumbnail;
    final l$titles = titles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$number,
      l$thumbnail,
      l$titles,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$episodes$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$titles = titles;
    final lOther$titles = other.titles;
    if (l$titles != lOther$titles) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes
    on Fragment$kitsuAnimeMedia$$Anime$episodes$nodes {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes$nodes) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes;

  TRes call({
    int? number,
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail? thumbnail,
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles? titles,
    String? $__typename,
  });
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<TRes>
  get thumbnail;
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<TRes>
  get titles;
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$episodes$nodes _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? number = _undefined,
    Object? thumbnail = _undefined,
    Object? titles = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes(
      number: number == _undefined || number == null
          ? _instance.number
          : (number as int),
      thumbnail: thumbnail == _undefined
          ? _instance.thumbnail
          : (thumbnail
                as Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail?),
      titles: titles == _undefined || titles == null
          ? _instance.titles
          : (titles as Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<TRes>
  get thumbnail {
    final local$thumbnail = _instance.thumbnail;
    return local$thumbnail == null
        ? CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail(
            local$thumbnail,
            (e) => call(thumbnail: e),
          );
  }

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<TRes>
  get titles {
    final local$titles = _instance.titles;
    return CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles(
      local$titles,
      (e) => call(titles: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes(this._res);

  TRes _res;

  call({
    int? number,
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail? thumbnail,
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles? titles,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<TRes>
  get thumbnail =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail.stub(
        _res,
      );

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<TRes>
  get titles =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles.stub(_res);
}

class Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail {
  Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail({
    required this.original,
    this.$__typename = 'Image',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$original = json['original'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail(
      original:
          Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original.fromJson(
            (l$original as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original
  original;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$original = original;
    _resultData['original'] = l$original.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$original = original;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$original,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$original = original;
    final lOther$original = other.original;
    if (l$original != lOther$original) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail
    on Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail
  >
  get copyWith =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<
  TRes
> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail)
    then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail;

  TRes call({
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original? original,
    String? $__typename,
  });
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
    TRes
  >
  get original;
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<
  TRes
>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<
          TRes
        > {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? original = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail(
      original: original == _undefined || original == null
          ? _instance.original
          : (original
                as Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
    TRes
  >
  get original {
    final local$original = _instance.original;
    return CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original(
      local$original,
      (e) => call(original: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<
  TRes
>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail<
          TRes
        > {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail(
    this._res,
  );

  TRes _res;

  call({
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original? original,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
    TRes
  >
  get original =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original.stub(
        _res,
      );
}

class Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original {
  Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original({
    required this.url,
    this.$__typename = 'ImageView',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original
    on Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original
  >
  get copyWith =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
  TRes
> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original instance,
    TRes Function(
      Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original,
    )
    then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
  TRes
>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
          TRes
        > {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original
  _instance;

  final TRes Function(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
  TRes
>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original<
          TRes
        > {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$thumbnail$original(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) => _res;
}

class Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles {
  Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles({
    required this.canonical,
    this.$__typename = 'TitlesList',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$canonical = json['canonical'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles(
      canonical: (l$canonical as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String canonical;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$canonical = canonical;
    _resultData['canonical'] = l$canonical;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$canonical = canonical;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$canonical,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$canonical = canonical;
    final lOther$canonical = other.canonical;
    if (l$canonical != lOther$canonical) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles
    on Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles
  >
  get copyWith =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<
  TRes
> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles;

  TRes call({
    String? canonical,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<TRes>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? canonical = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles(
      canonical: canonical == _undefined || canonical == null
          ? _instance.canonical
          : (canonical as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<
  TRes
>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$episodes$nodes$titles(
    this._res,
  );

  TRes _res;

  call({
    String? canonical,
    String? $__typename,
  }) => _res;
}

class Fragment$kitsuAnimeMedia$$Anime$posterImage {
  Fragment$kitsuAnimeMedia$$Anime$posterImage({
    required this.original,
    this.$__typename = 'Image',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$posterImage.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$original = json['original'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$posterImage(
      original: Fragment$kitsuAnimeMedia$$Anime$posterImage$original.fromJson(
        (l$original as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$kitsuAnimeMedia$$Anime$posterImage$original original;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$original = original;
    _resultData['original'] = l$original.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$original = original;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$original,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$posterImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$original = original;
    final lOther$original = other.original;
    if (l$original != lOther$original) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$posterImage
    on Fragment$kitsuAnimeMedia$$Anime$posterImage {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage<
    Fragment$kitsuAnimeMedia$$Anime$posterImage
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage(
    Fragment$kitsuAnimeMedia$$Anime$posterImage instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$posterImage) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage;

  TRes call({
    Fragment$kitsuAnimeMedia$$Anime$posterImage$original? original,
    String? $__typename,
  });
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<TRes>
  get original;
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$posterImage _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$posterImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? original = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$posterImage(
      original: original == _undefined || original == null
          ? _instance.original
          : (original as Fragment$kitsuAnimeMedia$$Anime$posterImage$original),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<TRes>
  get original {
    final local$original = _instance.original;
    return CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original(
      local$original,
      (e) => call(original: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage(this._res);

  TRes _res;

  call({
    Fragment$kitsuAnimeMedia$$Anime$posterImage$original? original,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<TRes>
  get original =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original.stub(_res);
}

class Fragment$kitsuAnimeMedia$$Anime$posterImage$original {
  Fragment$kitsuAnimeMedia$$Anime$posterImage$original({
    required this.url,
    this.$__typename = 'ImageView',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$posterImage$original.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$posterImage$original(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$posterImage$original ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$posterImage$original
    on Fragment$kitsuAnimeMedia$$Anime$posterImage$original {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<
    Fragment$kitsuAnimeMedia$$Anime$posterImage$original
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<
  TRes
> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original(
    Fragment$kitsuAnimeMedia$$Anime$posterImage$original instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$posterImage$original) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage$original;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage$original;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<TRes>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage$original(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$posterImage$original _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$posterImage$original)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$posterImage$original(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<
  TRes
>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$posterImage$original<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$posterImage$original(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) => _res;
}

class Fragment$kitsuAnimeMedia$$Anime$bannerImage {
  Fragment$kitsuAnimeMedia$$Anime$bannerImage({
    required this.original,
    this.$__typename = 'Image',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$bannerImage.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$original = json['original'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$bannerImage(
      original: Fragment$kitsuAnimeMedia$$Anime$bannerImage$original.fromJson(
        (l$original as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$kitsuAnimeMedia$$Anime$bannerImage$original original;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$original = original;
    _resultData['original'] = l$original.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$original = original;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$original,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$bannerImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$original = original;
    final lOther$original = other.original;
    if (l$original != lOther$original) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$bannerImage
    on Fragment$kitsuAnimeMedia$$Anime$bannerImage {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage<
    Fragment$kitsuAnimeMedia$$Anime$bannerImage
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage(
    Fragment$kitsuAnimeMedia$$Anime$bannerImage instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$bannerImage) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage;

  TRes call({
    Fragment$kitsuAnimeMedia$$Anime$bannerImage$original? original,
    String? $__typename,
  });
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<TRes>
  get original;
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$bannerImage _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$bannerImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? original = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$bannerImage(
      original: original == _undefined || original == null
          ? _instance.original
          : (original as Fragment$kitsuAnimeMedia$$Anime$bannerImage$original),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<TRes>
  get original {
    final local$original = _instance.original;
    return CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original(
      local$original,
      (e) => call(original: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage(this._res);

  TRes _res;

  call({
    Fragment$kitsuAnimeMedia$$Anime$bannerImage$original? original,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<TRes>
  get original =>
      CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original.stub(_res);
}

class Fragment$kitsuAnimeMedia$$Anime$bannerImage$original {
  Fragment$kitsuAnimeMedia$$Anime$bannerImage$original({
    required this.url,
    this.$__typename = 'ImageView',
  });

  factory Fragment$kitsuAnimeMedia$$Anime$bannerImage$original.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Anime$bannerImage$original(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Anime$bannerImage$original ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original
    on Fragment$kitsuAnimeMedia$$Anime$bannerImage$original {
  CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<
    Fragment$kitsuAnimeMedia$$Anime$bannerImage$original
  >
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<
  TRes
> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original(
    Fragment$kitsuAnimeMedia$$Anime$bannerImage$original instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Anime$bannerImage$original) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<TRes>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Anime$bannerImage$original _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Anime$bannerImage$original)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuAnimeMedia$$Anime$bannerImage$original(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<
  TRes
>
    implements
        CopyWith$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Anime$bannerImage$original(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) => _res;
}

class Fragment$kitsuAnimeMedia$$Manga implements Fragment$kitsuAnimeMedia {
  Fragment$kitsuAnimeMedia$$Manga({this.$__typename = 'Manga'});

  factory Fragment$kitsuAnimeMedia$$Manga.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Fragment$kitsuAnimeMedia$$Manga(
      $__typename: (l$$__typename as String),
    );
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuAnimeMedia$$Manga ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$kitsuAnimeMedia$$Manga
    on Fragment$kitsuAnimeMedia$$Manga {
  CopyWith$Fragment$kitsuAnimeMedia$$Manga<Fragment$kitsuAnimeMedia$$Manga>
  get copyWith => CopyWith$Fragment$kitsuAnimeMedia$$Manga(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuAnimeMedia$$Manga<TRes> {
  factory CopyWith$Fragment$kitsuAnimeMedia$$Manga(
    Fragment$kitsuAnimeMedia$$Manga instance,
    TRes Function(Fragment$kitsuAnimeMedia$$Manga) then,
  ) = _CopyWithImpl$Fragment$kitsuAnimeMedia$$Manga;

  factory CopyWith$Fragment$kitsuAnimeMedia$$Manga.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Manga;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$kitsuAnimeMedia$$Manga<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Manga<TRes> {
  _CopyWithImpl$Fragment$kitsuAnimeMedia$$Manga(
    this._instance,
    this._then,
  );

  final Fragment$kitsuAnimeMedia$$Manga _instance;

  final TRes Function(Fragment$kitsuAnimeMedia$$Manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Fragment$kitsuAnimeMedia$$Manga(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Manga<TRes>
    implements CopyWith$Fragment$kitsuAnimeMedia$$Manga<TRes> {
  _CopyWithStubImpl$Fragment$kitsuAnimeMedia$$Manga(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
