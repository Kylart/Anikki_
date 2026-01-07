part of 'provider_auth_bloc.dart';

class ProviderAuthState extends Equatable {
  const ProviderAuthState({
    this.anilistUser,
    this.malUser,
    this.kitsuUser,
  });

  final Query$Viewer$Viewer? anilistUser;
  final MalUser? malUser;
  final KitsuUser? kitsuUser;

  bool get isEmpty =>
      anilistUser == null && malUser == null && kitsuUser == null;
  bool get isNotEmpty => !isEmpty;

  @override
  List<Object?> get props => [
    anilistUser,
    malUser,
    kitsuUser,
  ];

  @override
  String toString() {
    return [
      'ProviderAuthState(',
      'AniList username: ${anilistUser?.name}',
      'MyAnimeList username: ${malUser?.name}',
      'Kitsu username: ${kitsuUser?.name}',
      ')',
    ].join(', ');
  }

  ProviderAuthState copyWith({
    Query$Viewer$Viewer? anilistUser,
    MalUser? malUser,
    KitsuUser? kitsuUser,
  }) {
    return ProviderAuthState(
      anilistUser: anilistUser ?? this.anilistUser,
      malUser: malUser ?? this.malUser,
      kitsuUser: kitsuUser ?? this.kitsuUser,
    );
  }
}
