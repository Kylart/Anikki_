import 'anime_media.fragment.graphql.dart';
import 'dart:async';
import 'library_entry.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Mutation$KitsuUpdateLibraryEntry {
  factory Variables$Mutation$KitsuUpdateLibraryEntry(
          {required Input$LibraryEntryUpdateProgressByMediaInput progress}) =>
      Variables$Mutation$KitsuUpdateLibraryEntry._({
        r'progress': progress,
      });

  Variables$Mutation$KitsuUpdateLibraryEntry._(this._$data);

  factory Variables$Mutation$KitsuUpdateLibraryEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$progress = data['progress'];
    result$data['progress'] =
        Input$LibraryEntryUpdateProgressByMediaInput.fromJson(
            (l$progress as Map<String, dynamic>));
    return Variables$Mutation$KitsuUpdateLibraryEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LibraryEntryUpdateProgressByMediaInput get progress =>
      (_$data['progress'] as Input$LibraryEntryUpdateProgressByMediaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$progress = progress;
    result$data['progress'] = l$progress.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$KitsuUpdateLibraryEntry<
          Variables$Mutation$KitsuUpdateLibraryEntry>
      get copyWith => CopyWith$Variables$Mutation$KitsuUpdateLibraryEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$KitsuUpdateLibraryEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$progress = progress;
    return Object.hashAll([l$progress]);
  }
}

abstract class CopyWith$Variables$Mutation$KitsuUpdateLibraryEntry<TRes> {
  factory CopyWith$Variables$Mutation$KitsuUpdateLibraryEntry(
    Variables$Mutation$KitsuUpdateLibraryEntry instance,
    TRes Function(Variables$Mutation$KitsuUpdateLibraryEntry) then,
  ) = _CopyWithImpl$Variables$Mutation$KitsuUpdateLibraryEntry;

  factory CopyWith$Variables$Mutation$KitsuUpdateLibraryEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$KitsuUpdateLibraryEntry;

  TRes call({Input$LibraryEntryUpdateProgressByMediaInput? progress});
}

class _CopyWithImpl$Variables$Mutation$KitsuUpdateLibraryEntry<TRes>
    implements CopyWith$Variables$Mutation$KitsuUpdateLibraryEntry<TRes> {
  _CopyWithImpl$Variables$Mutation$KitsuUpdateLibraryEntry(
    this._instance,
    this._then,
  );

  final Variables$Mutation$KitsuUpdateLibraryEntry _instance;

  final TRes Function(Variables$Mutation$KitsuUpdateLibraryEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? progress = _undefined}) =>
      _then(Variables$Mutation$KitsuUpdateLibraryEntry._({
        ..._instance._$data,
        if (progress != _undefined && progress != null)
          'progress':
              (progress as Input$LibraryEntryUpdateProgressByMediaInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$KitsuUpdateLibraryEntry<TRes>
    implements CopyWith$Variables$Mutation$KitsuUpdateLibraryEntry<TRes> {
  _CopyWithStubImpl$Variables$Mutation$KitsuUpdateLibraryEntry(this._res);

  TRes _res;

  call({Input$LibraryEntryUpdateProgressByMediaInput? progress}) => _res;
}

class Mutation$KitsuUpdateLibraryEntry {
  Mutation$KitsuUpdateLibraryEntry({
    required this.libraryEntry,
    this.$__typename = 'Mutation',
  });

  factory Mutation$KitsuUpdateLibraryEntry.fromJson(Map<String, dynamic> json) {
    final l$libraryEntry = json['libraryEntry'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry(
      libraryEntry: Mutation$KitsuUpdateLibraryEntry$libraryEntry.fromJson(
          (l$libraryEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry libraryEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$libraryEntry = libraryEntry;
    _resultData['libraryEntry'] = l$libraryEntry.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$libraryEntry = libraryEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$libraryEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$KitsuUpdateLibraryEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$libraryEntry = libraryEntry;
    final lOther$libraryEntry = other.libraryEntry;
    if (l$libraryEntry != lOther$libraryEntry) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry
    on Mutation$KitsuUpdateLibraryEntry {
  CopyWith$Mutation$KitsuUpdateLibraryEntry<Mutation$KitsuUpdateLibraryEntry>
      get copyWith => CopyWith$Mutation$KitsuUpdateLibraryEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry<TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry(
    Mutation$KitsuUpdateLibraryEntry instance,
    TRes Function(Mutation$KitsuUpdateLibraryEntry) then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry.stub(TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry;

  TRes call({
    Mutation$KitsuUpdateLibraryEntry$libraryEntry? libraryEntry,
    String? $__typename,
  });
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes> get libraryEntry;
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry<TRes>
    implements CopyWith$Mutation$KitsuUpdateLibraryEntry<TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry _instance;

  final TRes Function(Mutation$KitsuUpdateLibraryEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? libraryEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$KitsuUpdateLibraryEntry(
        libraryEntry: libraryEntry == _undefined || libraryEntry == null
            ? _instance.libraryEntry
            : (libraryEntry as Mutation$KitsuUpdateLibraryEntry$libraryEntry),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes>
      get libraryEntry {
    final local$libraryEntry = _instance.libraryEntry;
    return CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry(
        local$libraryEntry, (e) => call(libraryEntry: e));
  }
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry<TRes>
    implements CopyWith$Mutation$KitsuUpdateLibraryEntry<TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry(this._res);

  TRes _res;

  call({
    Mutation$KitsuUpdateLibraryEntry$libraryEntry? libraryEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes>
      get libraryEntry =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry.stub(_res);
}

const documentNodeMutationKitsuUpdateLibraryEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'KitsuUpdateLibraryEntry'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progress')),
        type: NamedTypeNode(
          name: NameNode(value: 'LibraryEntryUpdateProgressByMediaInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'libraryEntry'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'updateProgressByMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'progress')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'libraryEntry'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'errors'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'message'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'code'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'path'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionkitsuLibraryEntry,
  fragmentDefinitionkitsuAnimeMedia,
]);
Mutation$KitsuUpdateLibraryEntry _parserFn$Mutation$KitsuUpdateLibraryEntry(
        Map<String, dynamic> data) =>
    Mutation$KitsuUpdateLibraryEntry.fromJson(data);
typedef OnMutationCompleted$Mutation$KitsuUpdateLibraryEntry = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$KitsuUpdateLibraryEntry?,
);

class Options$Mutation$KitsuUpdateLibraryEntry
    extends graphql.MutationOptions<Mutation$KitsuUpdateLibraryEntry> {
  Options$Mutation$KitsuUpdateLibraryEntry({
    String? operationName,
    required Variables$Mutation$KitsuUpdateLibraryEntry variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$KitsuUpdateLibraryEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$KitsuUpdateLibraryEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$KitsuUpdateLibraryEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$KitsuUpdateLibraryEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationKitsuUpdateLibraryEntry,
          parserFn: _parserFn$Mutation$KitsuUpdateLibraryEntry,
        );

  final OnMutationCompleted$Mutation$KitsuUpdateLibraryEntry?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$KitsuUpdateLibraryEntry
    extends graphql.WatchQueryOptions<Mutation$KitsuUpdateLibraryEntry> {
  WatchOptions$Mutation$KitsuUpdateLibraryEntry({
    String? operationName,
    required Variables$Mutation$KitsuUpdateLibraryEntry variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$KitsuUpdateLibraryEntry? typedOptimisticResult,
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
          document: documentNodeMutationKitsuUpdateLibraryEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$KitsuUpdateLibraryEntry,
        );
}

extension ClientExtension$Mutation$KitsuUpdateLibraryEntry
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$KitsuUpdateLibraryEntry>>
      mutate$KitsuUpdateLibraryEntry(
              Options$Mutation$KitsuUpdateLibraryEntry options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$KitsuUpdateLibraryEntry>
      watchMutation$KitsuUpdateLibraryEntry(
              WatchOptions$Mutation$KitsuUpdateLibraryEntry options) =>
          this.watchMutation(options);
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry({
    this.updateProgressByMedia,
    this.$__typename = 'LibraryEntryMutations',
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry.fromJson(
      Map<String, dynamic> json) {
    final l$updateProgressByMedia = json['updateProgressByMedia'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry$libraryEntry(
      updateProgressByMedia: l$updateProgressByMedia == null
          ? null
          : Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia
              .fromJson((l$updateProgressByMedia as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia?
      updateProgressByMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateProgressByMedia = updateProgressByMedia;
    _resultData['updateProgressByMedia'] = l$updateProgressByMedia?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateProgressByMedia = updateProgressByMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateProgressByMedia,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$KitsuUpdateLibraryEntry$libraryEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateProgressByMedia = updateProgressByMedia;
    final lOther$updateProgressByMedia = other.updateProgressByMedia;
    if (l$updateProgressByMedia != lOther$updateProgressByMedia) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry>
      get copyWith => CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry instance,
    TRes Function(Mutation$KitsuUpdateLibraryEntry$libraryEntry) then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry;

  TRes call({
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia?
        updateProgressByMedia,
    String? $__typename,
  });
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
      TRes> get updateProgressByMedia;
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes>
    implements CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry _instance;

  final TRes Function(Mutation$KitsuUpdateLibraryEntry$libraryEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateProgressByMedia = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$KitsuUpdateLibraryEntry$libraryEntry(
        updateProgressByMedia: updateProgressByMedia == _undefined
            ? _instance.updateProgressByMedia
            : (updateProgressByMedia
                as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
      TRes> get updateProgressByMedia {
    final local$updateProgressByMedia = _instance.updateProgressByMedia;
    return local$updateProgressByMedia == null
        ? CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia
            .stub(_then(_instance))
        : CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia(
            local$updateProgressByMedia, (e) => call(updateProgressByMedia: e));
  }
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes>
    implements CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry<TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry(this._res);

  TRes _res;

  call({
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia?
        updateProgressByMedia,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
          TRes>
      get updateProgressByMedia =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia
              .stub(_res);
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia({
    this.libraryEntry,
    this.errors,
    this.$__typename = 'LibraryEntryUpdateProgressByMediaPayload',
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia.fromJson(
      Map<String, dynamic> json) {
    final l$libraryEntry = json['libraryEntry'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia(
      libraryEntry: l$libraryEntry == null
          ? null
          : Fragment$kitsuLibraryEntry.fromJson(
              (l$libraryEntry as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>?)
          ?.map((e) =>
              Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$kitsuLibraryEntry? libraryEntry;

  final List<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>?
      errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$libraryEntry = libraryEntry;
    _resultData['libraryEntry'] = l$libraryEntry?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$libraryEntry = libraryEntry;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$libraryEntry,
      l$errors == null ? null : Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$libraryEntry = libraryEntry;
    final lOther$libraryEntry = other.libraryEntry;
    if (l$libraryEntry != lOther$libraryEntry) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors != null && lOther$errors != null) {
      if (l$errors.length != lOther$errors.length) {
        return false;
      }
      for (int i = 0; i < l$errors.length; i++) {
        final l$errors$entry = l$errors[i];
        final lOther$errors$entry = lOther$errors[i];
        if (l$errors$entry != lOther$errors$entry) {
          return false;
        }
      }
    } else if (l$errors != lOther$errors) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia>
      get copyWith =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
    TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia
        instance,
    TRes Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia)
        then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia;

  TRes call({
    Fragment$kitsuLibraryEntry? libraryEntry,
    List<Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>?
        errors,
    String? $__typename,
  });
  CopyWith$Fragment$kitsuLibraryEntry<TRes> get libraryEntry;
  TRes errors(
      Iterable<Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>? Function(
              Iterable<
                  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
                      Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>>?)
          _fn);
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
            TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia
      _instance;

  final TRes Function(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? libraryEntry = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia(
        libraryEntry: libraryEntry == _undefined
            ? _instance.libraryEntry
            : (libraryEntry as Fragment$kitsuLibraryEntry?),
        errors: errors == _undefined
            ? _instance.errors
            : (errors as List<
                Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$kitsuLibraryEntry<TRes> get libraryEntry {
    final local$libraryEntry = _instance.libraryEntry;
    return local$libraryEntry == null
        ? CopyWith$Fragment$kitsuLibraryEntry.stub(_then(_instance))
        : CopyWith$Fragment$kitsuLibraryEntry(
            local$libraryEntry, (e) => call(libraryEntry: e));
  }

  TRes errors(
          Iterable<Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>? Function(
                  Iterable<
                      CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
                          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>>?)
              _fn) =>
      call(
          errors: _fn(_instance.errors?.map((e) =>
              CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia<
            TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia(
      this._res);

  TRes _res;

  call({
    Fragment$kitsuLibraryEntry? libraryEntry,
    List<Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>?
        errors,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$kitsuLibraryEntry<TRes> get libraryEntry =>
      CopyWith$Fragment$kitsuLibraryEntry.stub(_res);

  errors(_fn) => _res;
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors({
    required this.message,
    this.code,
    this.path,
    required this.$__typename,
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "GenericError":
        return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError
            .fromJson(json);

      case "NotAuthenticatedError":
        return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError
            .fromJson(json);

      case "NotAuthorizedError":
        return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError
            .fromJson(json);

      case "NotFoundError":
        return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError
            .fromJson(json);

      case "ValidationError":
        return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError
            .fromJson(json);

      default:
        final l$message = json['message'];
        final l$code = json['code'];
        final l$path = json['path'];
        final l$$__typename = json['__typename'];
        return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors(
          message: (l$message as String),
          code: (l$code as String?),
          path: (l$path as List<dynamic>?)?.map((e) => (e as String)).toList(),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String message;

  final String? code;

  final List<String>? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$path = path;
    _resultData['path'] = l$path?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$path == null ? null : Object.hashAll(l$path.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != null && lOther$path != null) {
      if (l$path.length != lOther$path.length) {
        return false;
      }
      for (int i = 0; i < l$path.length; i++) {
        final l$path$entry = l$path[i];
        final lOther$path$entry = lOther$path[i];
        if (l$path$entry != lOther$path$entry) {
          return false;
        }
      }
    } else if (l$path != lOther$path) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors>
      get copyWith =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError)
        genericError,
    required _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError)
        notAuthenticatedError,
    required _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError)
        notAuthorizedError,
    required _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError)
        notFoundError,
    required _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError)
        validationError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "GenericError":
        return genericError(this
            as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError);

      case "NotAuthenticatedError":
        return notAuthenticatedError(this
            as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError);

      case "NotAuthorizedError":
        return notAuthorizedError(this
            as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError);

      case "NotFoundError":
        return notFoundError(this
            as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError);

      case "ValidationError":
        return validationError(this
            as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError)?
        genericError,
    _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError)?
        notAuthenticatedError,
    _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError)?
        notAuthorizedError,
    _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError)?
        notFoundError,
    _T Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError)?
        validationError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "GenericError":
        if (genericError != null) {
          return genericError(this
              as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError);
        } else {
          return orElse();
        }

      case "NotAuthenticatedError":
        if (notAuthenticatedError != null) {
          return notAuthenticatedError(this
              as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError);
        } else {
          return orElse();
        }

      case "NotAuthorizedError":
        if (notAuthorizedError != null) {
          return notAuthorizedError(this
              as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError);
        } else {
          return orElse();
        }

      case "NotFoundError":
        if (notFoundError != null) {
          return notFoundError(this
              as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError);
        } else {
          return orElse();
        }

      case "ValidationError":
        if (validationError != null) {
          return validationError(this
              as Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
    TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors
        instance,
    TRes Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors)
        then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors;

  TRes call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
            TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors
      _instance;

  final TRes Function(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined ? _instance.code : (code as String?),
        path: path == _undefined ? _instance.path : (path as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors<
            TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError
    implements
        Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError({
    required this.message,
    this.code,
    this.path,
    this.$__typename = 'GenericError',
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$path = json['path'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError(
      message: (l$message as String),
      code: (l$code as String?),
      path: (l$path as List<dynamic>?)?.map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String? code;

  final List<String>? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$path = path;
    _resultData['path'] = l$path?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$path == null ? null : Object.hashAll(l$path.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != null && lOther$path != null) {
      if (l$path.length != lOther$path.length) {
        return false;
      }
      for (int i = 0; i < l$path.length; i++) {
        final l$path$entry = l$path[i];
        final lOther$path$entry = lOther$path[i];
        if (l$path$entry != lOther$path$entry) {
          return false;
        }
      }
    } else if (l$path != lOther$path) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError>
      get copyWith =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError<
    TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError
        instance,
    TRes Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError)
        then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError;

  TRes call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError<
            TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError
      _instance;

  final TRes Function(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined ? _instance.code : (code as String?),
        path: path == _undefined ? _instance.path : (path as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError<
            TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$GenericError(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError
    implements
        Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError({
    required this.message,
    this.code,
    this.path,
    this.$__typename = 'NotAuthenticatedError',
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$path = json['path'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError(
      message: (l$message as String),
      code: (l$code as String?),
      path: (l$path as List<dynamic>?)?.map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String? code;

  final List<String>? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$path = path;
    _resultData['path'] = l$path?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$path == null ? null : Object.hashAll(l$path.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != null && lOther$path != null) {
      if (l$path.length != lOther$path.length) {
        return false;
      }
      for (int i = 0; i < l$path.length; i++) {
        final l$path$entry = l$path[i];
        final lOther$path$entry = lOther$path[i];
        if (l$path$entry != lOther$path$entry) {
          return false;
        }
      }
    } else if (l$path != lOther$path) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError>
      get copyWith =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError<
    TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError
        instance,
    TRes Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError)
        then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError;

  TRes call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError<
            TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError
      _instance;

  final TRes Function(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined ? _instance.code : (code as String?),
        path: path == _undefined ? _instance.path : (path as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError<
            TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthenticatedError(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError
    implements
        Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError({
    required this.message,
    this.code,
    this.path,
    this.$__typename = 'NotAuthorizedError',
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$path = json['path'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError(
      message: (l$message as String),
      code: (l$code as String?),
      path: (l$path as List<dynamic>?)?.map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String? code;

  final List<String>? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$path = path;
    _resultData['path'] = l$path?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$path == null ? null : Object.hashAll(l$path.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != null && lOther$path != null) {
      if (l$path.length != lOther$path.length) {
        return false;
      }
      for (int i = 0; i < l$path.length; i++) {
        final l$path$entry = l$path[i];
        final lOther$path$entry = lOther$path[i];
        if (l$path$entry != lOther$path$entry) {
          return false;
        }
      }
    } else if (l$path != lOther$path) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError>
      get copyWith =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError<
    TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError
        instance,
    TRes Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError)
        then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError;

  TRes call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError<
            TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError
      _instance;

  final TRes Function(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined ? _instance.code : (code as String?),
        path: path == _undefined ? _instance.path : (path as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError<
            TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotAuthorizedError(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError
    implements
        Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError({
    required this.message,
    this.code,
    this.path,
    this.$__typename = 'NotFoundError',
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$path = json['path'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError(
      message: (l$message as String),
      code: (l$code as String?),
      path: (l$path as List<dynamic>?)?.map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String? code;

  final List<String>? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$path = path;
    _resultData['path'] = l$path?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$path == null ? null : Object.hashAll(l$path.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != null && lOther$path != null) {
      if (l$path.length != lOther$path.length) {
        return false;
      }
      for (int i = 0; i < l$path.length; i++) {
        final l$path$entry = l$path[i];
        final lOther$path$entry = lOther$path[i];
        if (l$path$entry != lOther$path$entry) {
          return false;
        }
      }
    } else if (l$path != lOther$path) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError>
      get copyWith =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError<
    TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError
        instance,
    TRes Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError)
        then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError;

  TRes call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError<
            TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError
      _instance;

  final TRes Function(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined ? _instance.code : (code as String?),
        path: path == _undefined ? _instance.path : (path as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError<
            TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$NotFoundError(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError
    implements
        Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors {
  Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError({
    required this.message,
    this.code,
    this.path,
    this.$__typename = 'ValidationError',
  });

  factory Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$path = json['path'];
    final l$$__typename = json['__typename'];
    return Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError(
      message: (l$message as String),
      code: (l$code as String?),
      path: (l$path as List<dynamic>?)?.map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String? code;

  final List<String>? path;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$path = path;
    _resultData['path'] = l$path?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$path = path;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$path == null ? null : Object.hashAll(l$path.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (l$path != null && lOther$path != null) {
      if (l$path.length != lOther$path.length) {
        return false;
      }
      for (int i = 0; i < l$path.length; i++) {
        final l$path$entry = l$path[i];
        final lOther$path$entry = lOther$path[i];
        if (l$path$entry != lOther$path$entry) {
          return false;
        }
      }
    } else if (l$path != lOther$path) {
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

extension UtilityExtension$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError
    on Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError {
  CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError<
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError>
      get copyWith =>
          CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError<
    TRes> {
  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError(
    Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError
        instance,
    TRes Function(
            Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError)
        then,
  ) = _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError;

  factory CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError;

  TRes call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError<
            TRes> {
  _CopyWithImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError(
    this._instance,
    this._then,
  );

  final Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError
      _instance;

  final TRes Function(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? path = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined ? _instance.code : (code as String?),
        path: path == _undefined ? _instance.path : (path as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError<
        TRes>
    implements
        CopyWith$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError<
            TRes> {
  _CopyWithStubImpl$Mutation$KitsuUpdateLibraryEntry$libraryEntry$updateProgressByMedia$errors$$ValidationError(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    List<String>? path,
    String? $__typename,
  }) =>
      _res;
}
