import 'anime_media.fragment.graphql.dart';
import 'dart:async';
import 'library_entry.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$KitsuLibrary {
  factory Variables$Query$KitsuLibrary({required int limit}) =>
      Variables$Query$KitsuLibrary._({
        r'limit': limit,
      });

  Variables$Query$KitsuLibrary._(this._$data);

  factory Variables$Query$KitsuLibrary.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$limit = data['limit'];
    result$data['limit'] = (l$limit as int);
    return Variables$Query$KitsuLibrary._(result$data);
  }

  Map<String, dynamic> _$data;

  int get limit => (_$data['limit'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$limit = limit;
    result$data['limit'] = l$limit;
    return result$data;
  }

  CopyWith$Variables$Query$KitsuLibrary<Variables$Query$KitsuLibrary>
  get copyWith => CopyWith$Variables$Query$KitsuLibrary(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$KitsuLibrary ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    return Object.hashAll([l$limit]);
  }
}

abstract class CopyWith$Variables$Query$KitsuLibrary<TRes> {
  factory CopyWith$Variables$Query$KitsuLibrary(
    Variables$Query$KitsuLibrary instance,
    TRes Function(Variables$Query$KitsuLibrary) then,
  ) = _CopyWithImpl$Variables$Query$KitsuLibrary;

  factory CopyWith$Variables$Query$KitsuLibrary.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$KitsuLibrary;

  TRes call({int? limit});
}

class _CopyWithImpl$Variables$Query$KitsuLibrary<TRes>
    implements CopyWith$Variables$Query$KitsuLibrary<TRes> {
  _CopyWithImpl$Variables$Query$KitsuLibrary(
    this._instance,
    this._then,
  );

  final Variables$Query$KitsuLibrary _instance;

  final TRes Function(Variables$Query$KitsuLibrary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? limit = _undefined}) => _then(
    Variables$Query$KitsuLibrary._({
      ..._instance._$data,
      if (limit != _undefined && limit != null) 'limit': (limit as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$KitsuLibrary<TRes>
    implements CopyWith$Variables$Query$KitsuLibrary<TRes> {
  _CopyWithStubImpl$Variables$Query$KitsuLibrary(this._res);

  TRes _res;

  call({int? limit}) => _res;
}

class Query$KitsuLibrary {
  Query$KitsuLibrary({
    this.currentProfile,
    this.$__typename = 'Query',
  });

  factory Query$KitsuLibrary.fromJson(Map<String, dynamic> json) {
    final l$currentProfile = json['currentProfile'];
    final l$$__typename = json['__typename'];
    return Query$KitsuLibrary(
      currentProfile: l$currentProfile == null
          ? null
          : Query$KitsuLibrary$currentProfile.fromJson(
              (l$currentProfile as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$KitsuLibrary$currentProfile? currentProfile;

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
    if (other is! Query$KitsuLibrary || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$KitsuLibrary on Query$KitsuLibrary {
  CopyWith$Query$KitsuLibrary<Query$KitsuLibrary> get copyWith =>
      CopyWith$Query$KitsuLibrary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$KitsuLibrary<TRes> {
  factory CopyWith$Query$KitsuLibrary(
    Query$KitsuLibrary instance,
    TRes Function(Query$KitsuLibrary) then,
  ) = _CopyWithImpl$Query$KitsuLibrary;

  factory CopyWith$Query$KitsuLibrary.stub(TRes res) =
      _CopyWithStubImpl$Query$KitsuLibrary;

  TRes call({
    Query$KitsuLibrary$currentProfile? currentProfile,
    String? $__typename,
  });
  CopyWith$Query$KitsuLibrary$currentProfile<TRes> get currentProfile;
}

class _CopyWithImpl$Query$KitsuLibrary<TRes>
    implements CopyWith$Query$KitsuLibrary<TRes> {
  _CopyWithImpl$Query$KitsuLibrary(
    this._instance,
    this._then,
  );

  final Query$KitsuLibrary _instance;

  final TRes Function(Query$KitsuLibrary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentProfile = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuLibrary(
      currentProfile: currentProfile == _undefined
          ? _instance.currentProfile
          : (currentProfile as Query$KitsuLibrary$currentProfile?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$KitsuLibrary$currentProfile<TRes> get currentProfile {
    final local$currentProfile = _instance.currentProfile;
    return local$currentProfile == null
        ? CopyWith$Query$KitsuLibrary$currentProfile.stub(_then(_instance))
        : CopyWith$Query$KitsuLibrary$currentProfile(
            local$currentProfile,
            (e) => call(currentProfile: e),
          );
  }
}

class _CopyWithStubImpl$Query$KitsuLibrary<TRes>
    implements CopyWith$Query$KitsuLibrary<TRes> {
  _CopyWithStubImpl$Query$KitsuLibrary(this._res);

  TRes _res;

  call({
    Query$KitsuLibrary$currentProfile? currentProfile,
    String? $__typename,
  }) => _res;

  CopyWith$Query$KitsuLibrary$currentProfile<TRes> get currentProfile =>
      CopyWith$Query$KitsuLibrary$currentProfile.stub(_res);
}

const documentNodeQueryKitsuLibrary = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'KitsuLibrary'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
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
                  name: NameNode(value: 'library'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'all'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'mediaType'),
                            value: EnumValueNode(
                              name: NameNode(value: 'ANIME'),
                            ),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'first'),
                            value: VariableNode(name: NameNode(value: 'limit')),
                          ),
                        ],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'pageInfo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'endCursor'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'hasNextPage'),
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
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(value: 'kitsuLibraryEntry'),
                                    directives: [],
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
    fragmentDefinitionkitsuLibraryEntry,
    fragmentDefinitionkitsuAnimeMedia,
  ],
);
Query$KitsuLibrary _parserFn$Query$KitsuLibrary(Map<String, dynamic> data) =>
    Query$KitsuLibrary.fromJson(data);
typedef OnQueryComplete$Query$KitsuLibrary =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$KitsuLibrary?,
    );

class Options$Query$KitsuLibrary
    extends graphql.QueryOptions<Query$KitsuLibrary> {
  Options$Query$KitsuLibrary({
    String? operationName,
    required Variables$Query$KitsuLibrary variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$KitsuLibrary? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$KitsuLibrary? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
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
                 data == null ? null : _parserFn$Query$KitsuLibrary(data),
               ),
         onError: onError,
         document: documentNodeQueryKitsuLibrary,
         parserFn: _parserFn$Query$KitsuLibrary,
       );

  final OnQueryComplete$Query$KitsuLibrary? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$KitsuLibrary
    extends graphql.WatchQueryOptions<Query$KitsuLibrary> {
  WatchOptions$Query$KitsuLibrary({
    String? operationName,
    required Variables$Query$KitsuLibrary variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$KitsuLibrary? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryKitsuLibrary,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$KitsuLibrary,
       );
}

class FetchMoreOptions$Query$KitsuLibrary extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$KitsuLibrary({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$KitsuLibrary variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryKitsuLibrary,
       );
}

extension ClientExtension$Query$KitsuLibrary on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$KitsuLibrary>> query$KitsuLibrary(
    Options$Query$KitsuLibrary options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$KitsuLibrary> watchQuery$KitsuLibrary(
    WatchOptions$Query$KitsuLibrary options,
  ) => this.watchQuery(options);
  void writeQuery$KitsuLibrary({
    required Query$KitsuLibrary data,
    required Variables$Query$KitsuLibrary variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryKitsuLibrary),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$KitsuLibrary? readQuery$KitsuLibrary({
    required Variables$Query$KitsuLibrary variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryKitsuLibrary),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$KitsuLibrary.fromJson(result);
  }
}

class Query$KitsuLibrary$currentProfile {
  Query$KitsuLibrary$currentProfile({
    required this.$library,
    this.$__typename = 'Profile',
  });

  factory Query$KitsuLibrary$currentProfile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$library = json['library'];
    final l$$__typename = json['__typename'];
    return Query$KitsuLibrary$currentProfile(
      $library: Query$KitsuLibrary$currentProfile$library.fromJson(
        (l$$library as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$KitsuLibrary$currentProfile$library $library;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$library = $library;
    _resultData['library'] = l$$library.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$library = $library;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$library,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$KitsuLibrary$currentProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$library = $library;
    final lOther$$library = other.$library;
    if (l$$library != lOther$$library) {
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

extension UtilityExtension$Query$KitsuLibrary$currentProfile
    on Query$KitsuLibrary$currentProfile {
  CopyWith$Query$KitsuLibrary$currentProfile<Query$KitsuLibrary$currentProfile>
  get copyWith => CopyWith$Query$KitsuLibrary$currentProfile(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$KitsuLibrary$currentProfile<TRes> {
  factory CopyWith$Query$KitsuLibrary$currentProfile(
    Query$KitsuLibrary$currentProfile instance,
    TRes Function(Query$KitsuLibrary$currentProfile) then,
  ) = _CopyWithImpl$Query$KitsuLibrary$currentProfile;

  factory CopyWith$Query$KitsuLibrary$currentProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$KitsuLibrary$currentProfile;

  TRes call({
    Query$KitsuLibrary$currentProfile$library? $library,
    String? $__typename,
  });
  CopyWith$Query$KitsuLibrary$currentProfile$library<TRes> get $library;
}

class _CopyWithImpl$Query$KitsuLibrary$currentProfile<TRes>
    implements CopyWith$Query$KitsuLibrary$currentProfile<TRes> {
  _CopyWithImpl$Query$KitsuLibrary$currentProfile(
    this._instance,
    this._then,
  );

  final Query$KitsuLibrary$currentProfile _instance;

  final TRes Function(Query$KitsuLibrary$currentProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $library = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuLibrary$currentProfile(
      $library: $library == _undefined || $library == null
          ? _instance.$library
          : ($library as Query$KitsuLibrary$currentProfile$library),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$KitsuLibrary$currentProfile$library<TRes> get $library {
    final local$$library = _instance.$library;
    return CopyWith$Query$KitsuLibrary$currentProfile$library(
      local$$library,
      (e) => call($library: e),
    );
  }
}

class _CopyWithStubImpl$Query$KitsuLibrary$currentProfile<TRes>
    implements CopyWith$Query$KitsuLibrary$currentProfile<TRes> {
  _CopyWithStubImpl$Query$KitsuLibrary$currentProfile(this._res);

  TRes _res;

  call({
    Query$KitsuLibrary$currentProfile$library? $library,
    String? $__typename,
  }) => _res;

  CopyWith$Query$KitsuLibrary$currentProfile$library<TRes> get $library =>
      CopyWith$Query$KitsuLibrary$currentProfile$library.stub(_res);
}

class Query$KitsuLibrary$currentProfile$library {
  Query$KitsuLibrary$currentProfile$library({
    required this.all,
    this.$__typename = 'Library',
  });

  factory Query$KitsuLibrary$currentProfile$library.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$all = json['all'];
    final l$$__typename = json['__typename'];
    return Query$KitsuLibrary$currentProfile$library(
      all: Query$KitsuLibrary$currentProfile$library$all.fromJson(
        (l$all as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$KitsuLibrary$currentProfile$library$all all;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$all = all;
    _resultData['all'] = l$all.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$all,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$KitsuLibrary$currentProfile$library ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (l$all != lOther$all) {
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

extension UtilityExtension$Query$KitsuLibrary$currentProfile$library
    on Query$KitsuLibrary$currentProfile$library {
  CopyWith$Query$KitsuLibrary$currentProfile$library<
    Query$KitsuLibrary$currentProfile$library
  >
  get copyWith => CopyWith$Query$KitsuLibrary$currentProfile$library(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$KitsuLibrary$currentProfile$library<TRes> {
  factory CopyWith$Query$KitsuLibrary$currentProfile$library(
    Query$KitsuLibrary$currentProfile$library instance,
    TRes Function(Query$KitsuLibrary$currentProfile$library) then,
  ) = _CopyWithImpl$Query$KitsuLibrary$currentProfile$library;

  factory CopyWith$Query$KitsuLibrary$currentProfile$library.stub(TRes res) =
      _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library;

  TRes call({
    Query$KitsuLibrary$currentProfile$library$all? all,
    String? $__typename,
  });
  CopyWith$Query$KitsuLibrary$currentProfile$library$all<TRes> get all;
}

class _CopyWithImpl$Query$KitsuLibrary$currentProfile$library<TRes>
    implements CopyWith$Query$KitsuLibrary$currentProfile$library<TRes> {
  _CopyWithImpl$Query$KitsuLibrary$currentProfile$library(
    this._instance,
    this._then,
  );

  final Query$KitsuLibrary$currentProfile$library _instance;

  final TRes Function(Query$KitsuLibrary$currentProfile$library) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuLibrary$currentProfile$library(
      all: all == _undefined || all == null
          ? _instance.all
          : (all as Query$KitsuLibrary$currentProfile$library$all),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$KitsuLibrary$currentProfile$library$all<TRes> get all {
    final local$all = _instance.all;
    return CopyWith$Query$KitsuLibrary$currentProfile$library$all(
      local$all,
      (e) => call(all: e),
    );
  }
}

class _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library<TRes>
    implements CopyWith$Query$KitsuLibrary$currentProfile$library<TRes> {
  _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library(this._res);

  TRes _res;

  call({
    Query$KitsuLibrary$currentProfile$library$all? all,
    String? $__typename,
  }) => _res;

  CopyWith$Query$KitsuLibrary$currentProfile$library$all<TRes> get all =>
      CopyWith$Query$KitsuLibrary$currentProfile$library$all.stub(_res);
}

class Query$KitsuLibrary$currentProfile$library$all {
  Query$KitsuLibrary$currentProfile$library$all({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'LibraryEntryConnection',
  });

  factory Query$KitsuLibrary$currentProfile$library$all.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$KitsuLibrary$currentProfile$library$all(
      pageInfo: Query$KitsuLibrary$currentProfile$library$all$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$kitsuLibraryEntry.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$KitsuLibrary$currentProfile$library$all$pageInfo pageInfo;

  final List<Fragment$kitsuLibraryEntry?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$KitsuLibrary$currentProfile$library$all ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$KitsuLibrary$currentProfile$library$all
    on Query$KitsuLibrary$currentProfile$library$all {
  CopyWith$Query$KitsuLibrary$currentProfile$library$all<
    Query$KitsuLibrary$currentProfile$library$all
  >
  get copyWith => CopyWith$Query$KitsuLibrary$currentProfile$library$all(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$KitsuLibrary$currentProfile$library$all<TRes> {
  factory CopyWith$Query$KitsuLibrary$currentProfile$library$all(
    Query$KitsuLibrary$currentProfile$library$all instance,
    TRes Function(Query$KitsuLibrary$currentProfile$library$all) then,
  ) = _CopyWithImpl$Query$KitsuLibrary$currentProfile$library$all;

  factory CopyWith$Query$KitsuLibrary$currentProfile$library$all.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library$all;

  TRes call({
    Query$KitsuLibrary$currentProfile$library$all$pageInfo? pageInfo,
    List<Fragment$kitsuLibraryEntry?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Fragment$kitsuLibraryEntry?>? Function(
      Iterable<
        CopyWith$Fragment$kitsuLibraryEntry<Fragment$kitsuLibraryEntry>?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$KitsuLibrary$currentProfile$library$all<TRes>
    implements CopyWith$Query$KitsuLibrary$currentProfile$library$all<TRes> {
  _CopyWithImpl$Query$KitsuLibrary$currentProfile$library$all(
    this._instance,
    this._then,
  );

  final Query$KitsuLibrary$currentProfile$library$all _instance;

  final TRes Function(Query$KitsuLibrary$currentProfile$library$all) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuLibrary$currentProfile$library$all(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$KitsuLibrary$currentProfile$library$all$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$kitsuLibraryEntry?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Fragment$kitsuLibraryEntry?>? Function(
      Iterable<
        CopyWith$Fragment$kitsuLibraryEntry<Fragment$kitsuLibraryEntry>?
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$kitsuLibraryEntry(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library$all<TRes>
    implements CopyWith$Query$KitsuLibrary$currentProfile$library$all<TRes> {
  _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library$all(this._res);

  TRes _res;

  call({
    Query$KitsuLibrary$currentProfile$library$all$pageInfo? pageInfo,
    List<Fragment$kitsuLibraryEntry?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$KitsuLibrary$currentProfile$library$all$pageInfo {
  Query$KitsuLibrary$currentProfile$library$all$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$KitsuLibrary$currentProfile$library$all$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$KitsuLibrary$currentProfile$library$all$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$KitsuLibrary$currentProfile$library$all$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$KitsuLibrary$currentProfile$library$all$pageInfo
    on Query$KitsuLibrary$currentProfile$library$all$pageInfo {
  CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo<
    Query$KitsuLibrary$currentProfile$library$all$pageInfo
  >
  get copyWith =>
      CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo<
  TRes
> {
  factory CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo(
    Query$KitsuLibrary$currentProfile$library$all$pageInfo instance,
    TRes Function(Query$KitsuLibrary$currentProfile$library$all$pageInfo) then,
  ) = _CopyWithImpl$Query$KitsuLibrary$currentProfile$library$all$pageInfo;

  factory CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library$all$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$KitsuLibrary$currentProfile$library$all$pageInfo<TRes>
    implements
        CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo<TRes> {
  _CopyWithImpl$Query$KitsuLibrary$currentProfile$library$all$pageInfo(
    this._instance,
    this._then,
  );

  final Query$KitsuLibrary$currentProfile$library$all$pageInfo _instance;

  final TRes Function(Query$KitsuLibrary$currentProfile$library$all$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$KitsuLibrary$currentProfile$library$all$pageInfo(
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library$all$pageInfo<
  TRes
>
    implements
        CopyWith$Query$KitsuLibrary$currentProfile$library$all$pageInfo<TRes> {
  _CopyWithStubImpl$Query$KitsuLibrary$currentProfile$library$all$pageInfo(
    this._res,
  );

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) => _res;
}
