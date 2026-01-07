import 'anime_media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Fragment$kitsuLibraryEntry {
  Fragment$kitsuLibraryEntry({
    required this.createdAt,
    this.progressedAt,
    this.finishedAt,
    required this.media,
    required this.id,
    required this.nsfw,
    required this.status,
    required this.reconsuming,
    required this.reconsumeCount,
    this.rating,
    this.notes,
    required this.private,
    required this.progress,
    this.$__typename = 'LibraryEntry',
  });

  factory Fragment$kitsuLibraryEntry.fromJson(Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$progressedAt = json['progressedAt'];
    final l$finishedAt = json['finishedAt'];
    final l$media = json['media'];
    final l$id = json['id'];
    final l$nsfw = json['nsfw'];
    final l$status = json['status'];
    final l$reconsuming = json['reconsuming'];
    final l$reconsumeCount = json['reconsumeCount'];
    final l$rating = json['rating'];
    final l$notes = json['notes'];
    final l$private = json['private'];
    final l$progress = json['progress'];
    final l$$__typename = json['__typename'];
    return Fragment$kitsuLibraryEntry(
      createdAt: (l$createdAt as String),
      progressedAt: (l$progressedAt as String?),
      finishedAt: (l$finishedAt as String?),
      media: Fragment$kitsuAnimeMedia.fromJson(
        (l$media as Map<String, dynamic>),
      ),
      id: (l$id as String),
      nsfw: (l$nsfw as bool),
      status: fromJson$Enum$LibraryEntryStatusEnum((l$status as String)),
      reconsuming: (l$reconsuming as bool),
      reconsumeCount: (l$reconsumeCount as int),
      rating: (l$rating as int?),
      notes: (l$notes as String?),
      private: (l$private as bool),
      progress: (l$progress as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String createdAt;

  final String? progressedAt;

  final String? finishedAt;

  final Fragment$kitsuAnimeMedia media;

  final String id;

  final bool nsfw;

  final Enum$LibraryEntryStatusEnum status;

  final bool reconsuming;

  final int reconsumeCount;

  final int? rating;

  final String? notes;

  final bool private;

  final int progress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$progressedAt = progressedAt;
    _resultData['progressedAt'] = l$progressedAt;
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nsfw = nsfw;
    _resultData['nsfw'] = l$nsfw;
    final l$status = status;
    _resultData['status'] = toJson$Enum$LibraryEntryStatusEnum(l$status);
    final l$reconsuming = reconsuming;
    _resultData['reconsuming'] = l$reconsuming;
    final l$reconsumeCount = reconsumeCount;
    _resultData['reconsumeCount'] = l$reconsumeCount;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$private = private;
    _resultData['private'] = l$private;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$progressedAt = progressedAt;
    final l$finishedAt = finishedAt;
    final l$media = media;
    final l$id = id;
    final l$nsfw = nsfw;
    final l$status = status;
    final l$reconsuming = reconsuming;
    final l$reconsumeCount = reconsumeCount;
    final l$rating = rating;
    final l$notes = notes;
    final l$private = private;
    final l$progress = progress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$progressedAt,
      l$finishedAt,
      l$media,
      l$id,
      l$nsfw,
      l$status,
      l$reconsuming,
      l$reconsumeCount,
      l$rating,
      l$notes,
      l$private,
      l$progress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$kitsuLibraryEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$progressedAt = progressedAt;
    final lOther$progressedAt = other.progressedAt;
    if (l$progressedAt != lOther$progressedAt) {
      return false;
    }
    final l$finishedAt = finishedAt;
    final lOther$finishedAt = other.finishedAt;
    if (l$finishedAt != lOther$finishedAt) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nsfw = nsfw;
    final lOther$nsfw = other.nsfw;
    if (l$nsfw != lOther$nsfw) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$reconsuming = reconsuming;
    final lOther$reconsuming = other.reconsuming;
    if (l$reconsuming != lOther$reconsuming) {
      return false;
    }
    final l$reconsumeCount = reconsumeCount;
    final lOther$reconsumeCount = other.reconsumeCount;
    if (l$reconsumeCount != lOther$reconsumeCount) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
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

extension UtilityExtension$Fragment$kitsuLibraryEntry
    on Fragment$kitsuLibraryEntry {
  CopyWith$Fragment$kitsuLibraryEntry<Fragment$kitsuLibraryEntry>
  get copyWith => CopyWith$Fragment$kitsuLibraryEntry(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$kitsuLibraryEntry<TRes> {
  factory CopyWith$Fragment$kitsuLibraryEntry(
    Fragment$kitsuLibraryEntry instance,
    TRes Function(Fragment$kitsuLibraryEntry) then,
  ) = _CopyWithImpl$Fragment$kitsuLibraryEntry;

  factory CopyWith$Fragment$kitsuLibraryEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$kitsuLibraryEntry;

  TRes call({
    String? createdAt,
    String? progressedAt,
    String? finishedAt,
    Fragment$kitsuAnimeMedia? media,
    String? id,
    bool? nsfw,
    Enum$LibraryEntryStatusEnum? status,
    bool? reconsuming,
    int? reconsumeCount,
    int? rating,
    String? notes,
    bool? private,
    int? progress,
    String? $__typename,
  });
  CopyWith$Fragment$kitsuAnimeMedia<TRes> get media;
}

class _CopyWithImpl$Fragment$kitsuLibraryEntry<TRes>
    implements CopyWith$Fragment$kitsuLibraryEntry<TRes> {
  _CopyWithImpl$Fragment$kitsuLibraryEntry(
    this._instance,
    this._then,
  );

  final Fragment$kitsuLibraryEntry _instance;

  final TRes Function(Fragment$kitsuLibraryEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? progressedAt = _undefined,
    Object? finishedAt = _undefined,
    Object? media = _undefined,
    Object? id = _undefined,
    Object? nsfw = _undefined,
    Object? status = _undefined,
    Object? reconsuming = _undefined,
    Object? reconsumeCount = _undefined,
    Object? rating = _undefined,
    Object? notes = _undefined,
    Object? private = _undefined,
    Object? progress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$kitsuLibraryEntry(
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as String),
      progressedAt: progressedAt == _undefined
          ? _instance.progressedAt
          : (progressedAt as String?),
      finishedAt: finishedAt == _undefined
          ? _instance.finishedAt
          : (finishedAt as String?),
      media: media == _undefined || media == null
          ? _instance.media
          : (media as Fragment$kitsuAnimeMedia),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      nsfw: nsfw == _undefined || nsfw == null
          ? _instance.nsfw
          : (nsfw as bool),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$LibraryEntryStatusEnum),
      reconsuming: reconsuming == _undefined || reconsuming == null
          ? _instance.reconsuming
          : (reconsuming as bool),
      reconsumeCount: reconsumeCount == _undefined || reconsumeCount == null
          ? _instance.reconsumeCount
          : (reconsumeCount as int),
      rating: rating == _undefined ? _instance.rating : (rating as int?),
      notes: notes == _undefined ? _instance.notes : (notes as String?),
      private: private == _undefined || private == null
          ? _instance.private
          : (private as bool),
      progress: progress == _undefined || progress == null
          ? _instance.progress
          : (progress as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$kitsuAnimeMedia<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Fragment$kitsuAnimeMedia(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$kitsuLibraryEntry<TRes>
    implements CopyWith$Fragment$kitsuLibraryEntry<TRes> {
  _CopyWithStubImpl$Fragment$kitsuLibraryEntry(this._res);

  TRes _res;

  call({
    String? createdAt,
    String? progressedAt,
    String? finishedAt,
    Fragment$kitsuAnimeMedia? media,
    String? id,
    bool? nsfw,
    Enum$LibraryEntryStatusEnum? status,
    bool? reconsuming,
    int? reconsumeCount,
    int? rating,
    String? notes,
    bool? private,
    int? progress,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$kitsuAnimeMedia<TRes> get media =>
      CopyWith$Fragment$kitsuAnimeMedia.stub(_res);
}

const fragmentDefinitionkitsuLibraryEntry = FragmentDefinitionNode(
  name: NameNode(value: 'kitsuLibraryEntry'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'LibraryEntry'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'progressedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'finishedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'media'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'kitsuAnimeMedia'),
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
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'nsfw'),
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
        name: NameNode(value: 'reconsuming'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'reconsumeCount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'notes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'private'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'progress'),
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
);
const documentNodeFragmentkitsuLibraryEntry = DocumentNode(
  definitions: [
    fragmentDefinitionkitsuLibraryEntry,
    fragmentDefinitionkitsuAnimeMedia,
  ],
);

extension ClientExtension$Fragment$kitsuLibraryEntry on graphql.GraphQLClient {
  void writeFragment$kitsuLibraryEntry({
    required Fragment$kitsuLibraryEntry data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'kitsuLibraryEntry',
        document: documentNodeFragmentkitsuLibraryEntry,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$kitsuLibraryEntry? readFragment$kitsuLibraryEntry({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'kitsuLibraryEntry',
          document: documentNodeFragmentkitsuLibraryEntry,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$kitsuLibraryEntry.fromJson(result);
  }
}
