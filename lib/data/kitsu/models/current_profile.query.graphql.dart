import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$KitsuCurrentProfile {
  Query$KitsuCurrentProfile({
    this.currentProfile,
    this.$__typename = 'Query',
  });

  factory Query$KitsuCurrentProfile.fromJson(Map<String, dynamic> json) {
    final l$currentProfile = json['currentProfile'];
    final l$$__typename = json['__typename'];
    return Query$KitsuCurrentProfile(
      currentProfile: l$currentProfile == null
          ? null
          : Query$KitsuCurrentProfile$currentProfile.fromJson(
              (l$currentProfile as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$KitsuCurrentProfile$currentProfile? currentProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentProfile = currentProfile;
    _resultData['currentProfile'] = l$currentProfile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentProfile = currentProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentProfile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$KitsuCurrentProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentProfile = currentProfile;
    final lOther$currentProfile = other.currentProfile;
    if (l$currentProfile != lOther$currentProfile) {
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

extension UtilityExtension$Query$KitsuCurrentProfile
    on Query$KitsuCurrentProfile {
  CopyWith$Query$KitsuCurrentProfile<Query$KitsuCurrentProfile> get copyWith =>
      CopyWith$Query$KitsuCurrentProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$KitsuCurrentProfile<TRes> {
  factory CopyWith$Query$KitsuCurrentProfile(
    Query$KitsuCurrentProfile instance,
    TRes Function(Query$KitsuCurrentProfile) then,
  ) = _CopyWithImpl$Query$KitsuCurrentProfile;

  factory CopyWith$Query$KitsuCurrentProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$KitsuCurrentProfile;

  TRes call({
    Query$KitsuCurrentProfile$currentProfile? currentProfile,
    String? $__typename,
  });
  CopyWith$Query$KitsuCurrentProfile$currentProfile<TRes> get currentProfile;
}

class _CopyWithImpl$Query$KitsuCurrentProfile<TRes>
    implements CopyWith$Query$KitsuCurrentProfile<TRes> {
  _CopyWithImpl$Query$KitsuCurrentProfile(
    this._instance,
    this._then,
  );

  final Query$KitsuCurrentProfile _instance;

  final TRes Function(Query$KitsuCurrentProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentProfile = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuCurrentProfile(
      currentProfile: currentProfile == _undefined
          ? _instance.currentProfile
          : (currentProfile as Query$KitsuCurrentProfile$currentProfile?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$KitsuCurrentProfile$currentProfile<TRes> get currentProfile {
    final local$currentProfile = _instance.currentProfile;
    return local$currentProfile == null
        ? CopyWith$Query$KitsuCurrentProfile$currentProfile.stub(
            _then(_instance),
          )
        : CopyWith$Query$KitsuCurrentProfile$currentProfile(
            local$currentProfile,
            (e) => call(currentProfile: e),
          );
  }
}

class _CopyWithStubImpl$Query$KitsuCurrentProfile<TRes>
    implements CopyWith$Query$KitsuCurrentProfile<TRes> {
  _CopyWithStubImpl$Query$KitsuCurrentProfile(this._res);

  TRes _res;

  call({
    Query$KitsuCurrentProfile$currentProfile? currentProfile,
    String? $__typename,
  }) => _res;

  CopyWith$Query$KitsuCurrentProfile$currentProfile<TRes> get currentProfile =>
      CopyWith$Query$KitsuCurrentProfile$currentProfile.stub(_res);
}

const documentNodeQueryKitsuCurrentProfile = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'KitsuCurrentProfile'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'currentProfile'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'avatarImage'),
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
    ),
  ],
);
Query$KitsuCurrentProfile _parserFn$Query$KitsuCurrentProfile(
  Map<String, dynamic> data,
) => Query$KitsuCurrentProfile.fromJson(data);
typedef OnQueryComplete$Query$KitsuCurrentProfile =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$KitsuCurrentProfile?,
    );

class Options$Query$KitsuCurrentProfile
    extends graphql.QueryOptions<Query$KitsuCurrentProfile> {
  Options$Query$KitsuCurrentProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$KitsuCurrentProfile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$KitsuCurrentProfile? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null
                     ? null
                     : _parserFn$Query$KitsuCurrentProfile(data),
               ),
         onError: onError,
         document: documentNodeQueryKitsuCurrentProfile,
         parserFn: _parserFn$Query$KitsuCurrentProfile,
       );

  final OnQueryComplete$Query$KitsuCurrentProfile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$KitsuCurrentProfile
    extends graphql.WatchQueryOptions<Query$KitsuCurrentProfile> {
  WatchOptions$Query$KitsuCurrentProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$KitsuCurrentProfile? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryKitsuCurrentProfile,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$KitsuCurrentProfile,
       );
}

class FetchMoreOptions$Query$KitsuCurrentProfile
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$KitsuCurrentProfile({
    required graphql.UpdateQuery updateQuery,
  }) : super(
         updateQuery: updateQuery,
         document: documentNodeQueryKitsuCurrentProfile,
       );
}

extension ClientExtension$Query$KitsuCurrentProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$KitsuCurrentProfile>>
  query$KitsuCurrentProfile([
    Options$Query$KitsuCurrentProfile? options,
  ]) async => await this.query(options ?? Options$Query$KitsuCurrentProfile());
  graphql.ObservableQuery<Query$KitsuCurrentProfile>
  watchQuery$KitsuCurrentProfile([
    WatchOptions$Query$KitsuCurrentProfile? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$KitsuCurrentProfile());
  void writeQuery$KitsuCurrentProfile({
    required Query$KitsuCurrentProfile data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryKitsuCurrentProfile,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$KitsuCurrentProfile? readQuery$KitsuCurrentProfile({
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryKitsuCurrentProfile,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$KitsuCurrentProfile.fromJson(result);
  }
}

class Query$KitsuCurrentProfile$currentProfile {
  Query$KitsuCurrentProfile$currentProfile({
    required this.name,
    required this.id,
    this.avatarImage,
    this.$__typename = 'Profile',
  });

  factory Query$KitsuCurrentProfile$currentProfile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$avatarImage = json['avatarImage'];
    final l$$__typename = json['__typename'];
    return Query$KitsuCurrentProfile$currentProfile(
      name: (l$name as String),
      id: (l$id as String),
      avatarImage: l$avatarImage == null
          ? null
          : Query$KitsuCurrentProfile$currentProfile$avatarImage.fromJson(
              (l$avatarImage as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final Query$KitsuCurrentProfile$currentProfile$avatarImage? avatarImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatarImage = avatarImage;
    _resultData['avatarImage'] = l$avatarImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$avatarImage = avatarImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$avatarImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$KitsuCurrentProfile$currentProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatarImage = avatarImage;
    final lOther$avatarImage = other.avatarImage;
    if (l$avatarImage != lOther$avatarImage) {
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

extension UtilityExtension$Query$KitsuCurrentProfile$currentProfile
    on Query$KitsuCurrentProfile$currentProfile {
  CopyWith$Query$KitsuCurrentProfile$currentProfile<
    Query$KitsuCurrentProfile$currentProfile
  >
  get copyWith => CopyWith$Query$KitsuCurrentProfile$currentProfile(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$KitsuCurrentProfile$currentProfile<TRes> {
  factory CopyWith$Query$KitsuCurrentProfile$currentProfile(
    Query$KitsuCurrentProfile$currentProfile instance,
    TRes Function(Query$KitsuCurrentProfile$currentProfile) then,
  ) = _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile;

  factory CopyWith$Query$KitsuCurrentProfile$currentProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile;

  TRes call({
    String? name,
    String? id,
    Query$KitsuCurrentProfile$currentProfile$avatarImage? avatarImage,
    String? $__typename,
  });
  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage<TRes>
  get avatarImage;
}

class _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile<TRes>
    implements CopyWith$Query$KitsuCurrentProfile$currentProfile<TRes> {
  _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile(
    this._instance,
    this._then,
  );

  final Query$KitsuCurrentProfile$currentProfile _instance;

  final TRes Function(Query$KitsuCurrentProfile$currentProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? avatarImage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuCurrentProfile$currentProfile(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      avatarImage: avatarImage == _undefined
          ? _instance.avatarImage
          : (avatarImage
                as Query$KitsuCurrentProfile$currentProfile$avatarImage?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage<TRes>
  get avatarImage {
    final local$avatarImage = _instance.avatarImage;
    return local$avatarImage == null
        ? CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage.stub(
            _then(_instance),
          )
        : CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage(
            local$avatarImage,
            (e) => call(avatarImage: e),
          );
  }
}

class _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile<TRes>
    implements CopyWith$Query$KitsuCurrentProfile$currentProfile<TRes> {
  _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile(this._res);

  TRes _res;

  call({
    String? name,
    String? id,
    Query$KitsuCurrentProfile$currentProfile$avatarImage? avatarImage,
    String? $__typename,
  }) => _res;

  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage<TRes>
  get avatarImage =>
      CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage.stub(_res);
}

class Query$KitsuCurrentProfile$currentProfile$avatarImage {
  Query$KitsuCurrentProfile$currentProfile$avatarImage({
    required this.original,
    this.$__typename = 'Image',
  });

  factory Query$KitsuCurrentProfile$currentProfile$avatarImage.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$original = json['original'];
    final l$$__typename = json['__typename'];
    return Query$KitsuCurrentProfile$currentProfile$avatarImage(
      original:
          Query$KitsuCurrentProfile$currentProfile$avatarImage$original.fromJson(
            (l$original as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$KitsuCurrentProfile$currentProfile$avatarImage$original original;

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
    if (other is! Query$KitsuCurrentProfile$currentProfile$avatarImage ||
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

extension UtilityExtension$Query$KitsuCurrentProfile$currentProfile$avatarImage
    on Query$KitsuCurrentProfile$currentProfile$avatarImage {
  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage<
    Query$KitsuCurrentProfile$currentProfile$avatarImage
  >
  get copyWith => CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage<
  TRes
> {
  factory CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage(
    Query$KitsuCurrentProfile$currentProfile$avatarImage instance,
    TRes Function(Query$KitsuCurrentProfile$currentProfile$avatarImage) then,
  ) = _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage;

  factory CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage;

  TRes call({
    Query$KitsuCurrentProfile$currentProfile$avatarImage$original? original,
    String? $__typename,
  });
  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<TRes>
  get original;
}

class _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage<TRes>
    implements
        CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage<TRes> {
  _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage(
    this._instance,
    this._then,
  );

  final Query$KitsuCurrentProfile$currentProfile$avatarImage _instance;

  final TRes Function(Query$KitsuCurrentProfile$currentProfile$avatarImage)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? original = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuCurrentProfile$currentProfile$avatarImage(
      original: original == _undefined || original == null
          ? _instance.original
          : (original
                as Query$KitsuCurrentProfile$currentProfile$avatarImage$original),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<TRes>
  get original {
    final local$original = _instance.original;
    return CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original(
      local$original,
      (e) => call(original: e),
    );
  }
}

class _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage<
  TRes
>
    implements
        CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage<TRes> {
  _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage(
    this._res,
  );

  TRes _res;

  call({
    Query$KitsuCurrentProfile$currentProfile$avatarImage$original? original,
    String? $__typename,
  }) => _res;

  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<TRes>
  get original =>
      CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original.stub(
        _res,
      );
}

class Query$KitsuCurrentProfile$currentProfile$avatarImage$original {
  Query$KitsuCurrentProfile$currentProfile$avatarImage$original({
    required this.url,
    this.$__typename = 'ImageView',
  });

  factory Query$KitsuCurrentProfile$currentProfile$avatarImage$original.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$KitsuCurrentProfile$currentProfile$avatarImage$original(
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
            is! Query$KitsuCurrentProfile$currentProfile$avatarImage$original ||
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

extension UtilityExtension$Query$KitsuCurrentProfile$currentProfile$avatarImage$original
    on Query$KitsuCurrentProfile$currentProfile$avatarImage$original {
  CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<
    Query$KitsuCurrentProfile$currentProfile$avatarImage$original
  >
  get copyWith =>
      CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<
  TRes
> {
  factory CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original(
    Query$KitsuCurrentProfile$currentProfile$avatarImage$original instance,
    TRes Function(Query$KitsuCurrentProfile$currentProfile$avatarImage$original)
    then,
  ) = _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage$original;

  factory CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage$original;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<
  TRes
>
    implements
        CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<
          TRes
        > {
  _CopyWithImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage$original(
    this._instance,
    this._then,
  );

  final Query$KitsuCurrentProfile$currentProfile$avatarImage$original _instance;

  final TRes Function(
    Query$KitsuCurrentProfile$currentProfile$avatarImage$original,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuCurrentProfile$currentProfile$avatarImage$original(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<
  TRes
>
    implements
        CopyWith$Query$KitsuCurrentProfile$currentProfile$avatarImage$original<
          TRes
        > {
  _CopyWithStubImpl$Query$KitsuCurrentProfile$currentProfile$avatarImage$original(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) => _res;
}
