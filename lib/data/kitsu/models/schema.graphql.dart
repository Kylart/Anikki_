class Input$AccountChangePasswordInput {
  factory Input$AccountChangePasswordInput({
    required String oldPassword,
    required String newPassword,
  }) => Input$AccountChangePasswordInput._({
    r'oldPassword': oldPassword,
    r'newPassword': newPassword,
  });

  Input$AccountChangePasswordInput._(this._$data);

  factory Input$AccountChangePasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$oldPassword = data['oldPassword'];
    result$data['oldPassword'] = (l$oldPassword as String);
    final l$newPassword = data['newPassword'];
    result$data['newPassword'] = (l$newPassword as String);
    return Input$AccountChangePasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get oldPassword => (_$data['oldPassword'] as String);

  String get newPassword => (_$data['newPassword'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$oldPassword = oldPassword;
    result$data['oldPassword'] = l$oldPassword;
    final l$newPassword = newPassword;
    result$data['newPassword'] = l$newPassword;
    return result$data;
  }

  CopyWith$Input$AccountChangePasswordInput<Input$AccountChangePasswordInput>
  get copyWith => CopyWith$Input$AccountChangePasswordInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountChangePasswordInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$oldPassword = oldPassword;
    final lOther$oldPassword = other.oldPassword;
    if (l$oldPassword != lOther$oldPassword) {
      return false;
    }
    final l$newPassword = newPassword;
    final lOther$newPassword = other.newPassword;
    if (l$newPassword != lOther$newPassword) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$oldPassword = oldPassword;
    final l$newPassword = newPassword;
    return Object.hashAll([
      l$oldPassword,
      l$newPassword,
    ]);
  }
}

abstract class CopyWith$Input$AccountChangePasswordInput<TRes> {
  factory CopyWith$Input$AccountChangePasswordInput(
    Input$AccountChangePasswordInput instance,
    TRes Function(Input$AccountChangePasswordInput) then,
  ) = _CopyWithImpl$Input$AccountChangePasswordInput;

  factory CopyWith$Input$AccountChangePasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountChangePasswordInput;

  TRes call({
    String? oldPassword,
    String? newPassword,
  });
}

class _CopyWithImpl$Input$AccountChangePasswordInput<TRes>
    implements CopyWith$Input$AccountChangePasswordInput<TRes> {
  _CopyWithImpl$Input$AccountChangePasswordInput(
    this._instance,
    this._then,
  );

  final Input$AccountChangePasswordInput _instance;

  final TRes Function(Input$AccountChangePasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? oldPassword = _undefined,
    Object? newPassword = _undefined,
  }) => _then(
    Input$AccountChangePasswordInput._({
      ..._instance._$data,
      if (oldPassword != _undefined && oldPassword != null)
        'oldPassword': (oldPassword as String),
      if (newPassword != _undefined && newPassword != null)
        'newPassword': (newPassword as String),
    }),
  );
}

class _CopyWithStubImpl$Input$AccountChangePasswordInput<TRes>
    implements CopyWith$Input$AccountChangePasswordInput<TRes> {
  _CopyWithStubImpl$Input$AccountChangePasswordInput(this._res);

  TRes _res;

  call({
    String? oldPassword,
    String? newPassword,
  }) => _res;
}

class Input$AccountCreateInput {
  factory Input$AccountCreateInput({
    required String name,
    required String email,
    required String password,
    Input$AccountExternalIdentityInput? externalIdentity,
  }) => Input$AccountCreateInput._({
    r'name': name,
    r'email': email,
    r'password': password,
    if (externalIdentity != null) r'externalIdentity': externalIdentity,
  });

  Input$AccountCreateInput._(this._$data);

  factory Input$AccountCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('externalIdentity')) {
      final l$externalIdentity = data['externalIdentity'];
      result$data['externalIdentity'] = l$externalIdentity == null
          ? null
          : Input$AccountExternalIdentityInput.fromJson(
              (l$externalIdentity as Map<String, dynamic>),
            );
    }
    return Input$AccountCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Input$AccountExternalIdentityInput? get externalIdentity =>
      (_$data['externalIdentity'] as Input$AccountExternalIdentityInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('externalIdentity')) {
      final l$externalIdentity = externalIdentity;
      result$data['externalIdentity'] = l$externalIdentity?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccountCreateInput<Input$AccountCreateInput> get copyWith =>
      CopyWith$Input$AccountCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$externalIdentity = externalIdentity;
    final lOther$externalIdentity = other.externalIdentity;
    if (_$data.containsKey('externalIdentity') !=
        other._$data.containsKey('externalIdentity')) {
      return false;
    }
    if (l$externalIdentity != lOther$externalIdentity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$password = password;
    final l$externalIdentity = externalIdentity;
    return Object.hashAll([
      l$name,
      l$email,
      l$password,
      _$data.containsKey('externalIdentity') ? l$externalIdentity : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccountCreateInput<TRes> {
  factory CopyWith$Input$AccountCreateInput(
    Input$AccountCreateInput instance,
    TRes Function(Input$AccountCreateInput) then,
  ) = _CopyWithImpl$Input$AccountCreateInput;

  factory CopyWith$Input$AccountCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountCreateInput;

  TRes call({
    String? name,
    String? email,
    String? password,
    Input$AccountExternalIdentityInput? externalIdentity,
  });
  CopyWith$Input$AccountExternalIdentityInput<TRes> get externalIdentity;
}

class _CopyWithImpl$Input$AccountCreateInput<TRes>
    implements CopyWith$Input$AccountCreateInput<TRes> {
  _CopyWithImpl$Input$AccountCreateInput(
    this._instance,
    this._then,
  );

  final Input$AccountCreateInput _instance;

  final TRes Function(Input$AccountCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
    Object? externalIdentity = _undefined,
  }) => _then(
    Input$AccountCreateInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (email != _undefined && email != null) 'email': (email as String),
      if (password != _undefined && password != null)
        'password': (password as String),
      if (externalIdentity != _undefined)
        'externalIdentity':
            (externalIdentity as Input$AccountExternalIdentityInput?),
    }),
  );

  CopyWith$Input$AccountExternalIdentityInput<TRes> get externalIdentity {
    final local$externalIdentity = _instance.externalIdentity;
    return local$externalIdentity == null
        ? CopyWith$Input$AccountExternalIdentityInput.stub(_then(_instance))
        : CopyWith$Input$AccountExternalIdentityInput(
            local$externalIdentity,
            (e) => call(externalIdentity: e),
          );
  }
}

class _CopyWithStubImpl$Input$AccountCreateInput<TRes>
    implements CopyWith$Input$AccountCreateInput<TRes> {
  _CopyWithStubImpl$Input$AccountCreateInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? password,
    Input$AccountExternalIdentityInput? externalIdentity,
  }) => _res;

  CopyWith$Input$AccountExternalIdentityInput<TRes> get externalIdentity =>
      CopyWith$Input$AccountExternalIdentityInput.stub(_res);
}

class Input$AccountExternalIdentityInput {
  factory Input$AccountExternalIdentityInput({
    required Enum$ExternalIdentityProviderEnum provider,
    required String id,
  }) => Input$AccountExternalIdentityInput._({
    r'provider': provider,
    r'id': id,
  });

  Input$AccountExternalIdentityInput._(this._$data);

  factory Input$AccountExternalIdentityInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$provider = data['provider'];
    result$data['provider'] = fromJson$Enum$ExternalIdentityProviderEnum(
      (l$provider as String),
    );
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$AccountExternalIdentityInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ExternalIdentityProviderEnum get provider =>
      (_$data['provider'] as Enum$ExternalIdentityProviderEnum);

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$provider = provider;
    result$data['provider'] = toJson$Enum$ExternalIdentityProviderEnum(
      l$provider,
    );
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$AccountExternalIdentityInput<
    Input$AccountExternalIdentityInput
  >
  get copyWith => CopyWith$Input$AccountExternalIdentityInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountExternalIdentityInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider != lOther$provider) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$provider = provider;
    final l$id = id;
    return Object.hashAll([
      l$provider,
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$AccountExternalIdentityInput<TRes> {
  factory CopyWith$Input$AccountExternalIdentityInput(
    Input$AccountExternalIdentityInput instance,
    TRes Function(Input$AccountExternalIdentityInput) then,
  ) = _CopyWithImpl$Input$AccountExternalIdentityInput;

  factory CopyWith$Input$AccountExternalIdentityInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountExternalIdentityInput;

  TRes call({
    Enum$ExternalIdentityProviderEnum? provider,
    String? id,
  });
}

class _CopyWithImpl$Input$AccountExternalIdentityInput<TRes>
    implements CopyWith$Input$AccountExternalIdentityInput<TRes> {
  _CopyWithImpl$Input$AccountExternalIdentityInput(
    this._instance,
    this._then,
  );

  final Input$AccountExternalIdentityInput _instance;

  final TRes Function(Input$AccountExternalIdentityInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? provider = _undefined,
    Object? id = _undefined,
  }) => _then(
    Input$AccountExternalIdentityInput._({
      ..._instance._$data,
      if (provider != _undefined && provider != null)
        'provider': (provider as Enum$ExternalIdentityProviderEnum),
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Input$AccountExternalIdentityInput<TRes>
    implements CopyWith$Input$AccountExternalIdentityInput<TRes> {
  _CopyWithStubImpl$Input$AccountExternalIdentityInput(this._res);

  TRes _res;

  call({
    Enum$ExternalIdentityProviderEnum? provider,
    String? id,
  }) => _res;
}

class Input$AccountUpdateInput {
  factory Input$AccountUpdateInput({
    Enum$SfwFilterPreferenceEnum? sfwFilterPreference,
    String? country,
    Enum$SiteThemeEnum? siteTheme,
    Enum$RatingSystemEnum? ratingSystem,
    Enum$TitleLanguagePreferenceEnum? preferredTitleLanguage,
    String? timeZone,
  }) => Input$AccountUpdateInput._({
    if (sfwFilterPreference != null)
      r'sfwFilterPreference': sfwFilterPreference,
    if (country != null) r'country': country,
    if (siteTheme != null) r'siteTheme': siteTheme,
    if (ratingSystem != null) r'ratingSystem': ratingSystem,
    if (preferredTitleLanguage != null)
      r'preferredTitleLanguage': preferredTitleLanguage,
    if (timeZone != null) r'timeZone': timeZone,
  });

  Input$AccountUpdateInput._(this._$data);

  factory Input$AccountUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('sfwFilterPreference')) {
      final l$sfwFilterPreference = data['sfwFilterPreference'];
      result$data['sfwFilterPreference'] = l$sfwFilterPreference == null
          ? null
          : fromJson$Enum$SfwFilterPreferenceEnum(
              (l$sfwFilterPreference as String),
            );
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('siteTheme')) {
      final l$siteTheme = data['siteTheme'];
      result$data['siteTheme'] = l$siteTheme == null
          ? null
          : fromJson$Enum$SiteThemeEnum((l$siteTheme as String));
    }
    if (data.containsKey('ratingSystem')) {
      final l$ratingSystem = data['ratingSystem'];
      result$data['ratingSystem'] = l$ratingSystem == null
          ? null
          : fromJson$Enum$RatingSystemEnum((l$ratingSystem as String));
    }
    if (data.containsKey('preferredTitleLanguage')) {
      final l$preferredTitleLanguage = data['preferredTitleLanguage'];
      result$data['preferredTitleLanguage'] = l$preferredTitleLanguage == null
          ? null
          : fromJson$Enum$TitleLanguagePreferenceEnum(
              (l$preferredTitleLanguage as String),
            );
    }
    if (data.containsKey('timeZone')) {
      final l$timeZone = data['timeZone'];
      result$data['timeZone'] = (l$timeZone as String?);
    }
    return Input$AccountUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SfwFilterPreferenceEnum? get sfwFilterPreference =>
      (_$data['sfwFilterPreference'] as Enum$SfwFilterPreferenceEnum?);

  String? get country => (_$data['country'] as String?);

  Enum$SiteThemeEnum? get siteTheme =>
      (_$data['siteTheme'] as Enum$SiteThemeEnum?);

  Enum$RatingSystemEnum? get ratingSystem =>
      (_$data['ratingSystem'] as Enum$RatingSystemEnum?);

  Enum$TitleLanguagePreferenceEnum? get preferredTitleLanguage =>
      (_$data['preferredTitleLanguage'] as Enum$TitleLanguagePreferenceEnum?);

  String? get timeZone => (_$data['timeZone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('sfwFilterPreference')) {
      final l$sfwFilterPreference = sfwFilterPreference;
      result$data['sfwFilterPreference'] = l$sfwFilterPreference == null
          ? null
          : toJson$Enum$SfwFilterPreferenceEnum(l$sfwFilterPreference);
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('siteTheme')) {
      final l$siteTheme = siteTheme;
      result$data['siteTheme'] = l$siteTheme == null
          ? null
          : toJson$Enum$SiteThemeEnum(l$siteTheme);
    }
    if (_$data.containsKey('ratingSystem')) {
      final l$ratingSystem = ratingSystem;
      result$data['ratingSystem'] = l$ratingSystem == null
          ? null
          : toJson$Enum$RatingSystemEnum(l$ratingSystem);
    }
    if (_$data.containsKey('preferredTitleLanguage')) {
      final l$preferredTitleLanguage = preferredTitleLanguage;
      result$data['preferredTitleLanguage'] = l$preferredTitleLanguage == null
          ? null
          : toJson$Enum$TitleLanguagePreferenceEnum(l$preferredTitleLanguage);
    }
    if (_$data.containsKey('timeZone')) {
      final l$timeZone = timeZone;
      result$data['timeZone'] = l$timeZone;
    }
    return result$data;
  }

  CopyWith$Input$AccountUpdateInput<Input$AccountUpdateInput> get copyWith =>
      CopyWith$Input$AccountUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sfwFilterPreference = sfwFilterPreference;
    final lOther$sfwFilterPreference = other.sfwFilterPreference;
    if (_$data.containsKey('sfwFilterPreference') !=
        other._$data.containsKey('sfwFilterPreference')) {
      return false;
    }
    if (l$sfwFilterPreference != lOther$sfwFilterPreference) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$siteTheme = siteTheme;
    final lOther$siteTheme = other.siteTheme;
    if (_$data.containsKey('siteTheme') !=
        other._$data.containsKey('siteTheme')) {
      return false;
    }
    if (l$siteTheme != lOther$siteTheme) {
      return false;
    }
    final l$ratingSystem = ratingSystem;
    final lOther$ratingSystem = other.ratingSystem;
    if (_$data.containsKey('ratingSystem') !=
        other._$data.containsKey('ratingSystem')) {
      return false;
    }
    if (l$ratingSystem != lOther$ratingSystem) {
      return false;
    }
    final l$preferredTitleLanguage = preferredTitleLanguage;
    final lOther$preferredTitleLanguage = other.preferredTitleLanguage;
    if (_$data.containsKey('preferredTitleLanguage') !=
        other._$data.containsKey('preferredTitleLanguage')) {
      return false;
    }
    if (l$preferredTitleLanguage != lOther$preferredTitleLanguage) {
      return false;
    }
    final l$timeZone = timeZone;
    final lOther$timeZone = other.timeZone;
    if (_$data.containsKey('timeZone') !=
        other._$data.containsKey('timeZone')) {
      return false;
    }
    if (l$timeZone != lOther$timeZone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sfwFilterPreference = sfwFilterPreference;
    final l$country = country;
    final l$siteTheme = siteTheme;
    final l$ratingSystem = ratingSystem;
    final l$preferredTitleLanguage = preferredTitleLanguage;
    final l$timeZone = timeZone;
    return Object.hashAll([
      _$data.containsKey('sfwFilterPreference')
          ? l$sfwFilterPreference
          : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('siteTheme') ? l$siteTheme : const {},
      _$data.containsKey('ratingSystem') ? l$ratingSystem : const {},
      _$data.containsKey('preferredTitleLanguage')
          ? l$preferredTitleLanguage
          : const {},
      _$data.containsKey('timeZone') ? l$timeZone : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccountUpdateInput<TRes> {
  factory CopyWith$Input$AccountUpdateInput(
    Input$AccountUpdateInput instance,
    TRes Function(Input$AccountUpdateInput) then,
  ) = _CopyWithImpl$Input$AccountUpdateInput;

  factory CopyWith$Input$AccountUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountUpdateInput;

  TRes call({
    Enum$SfwFilterPreferenceEnum? sfwFilterPreference,
    String? country,
    Enum$SiteThemeEnum? siteTheme,
    Enum$RatingSystemEnum? ratingSystem,
    Enum$TitleLanguagePreferenceEnum? preferredTitleLanguage,
    String? timeZone,
  });
}

class _CopyWithImpl$Input$AccountUpdateInput<TRes>
    implements CopyWith$Input$AccountUpdateInput<TRes> {
  _CopyWithImpl$Input$AccountUpdateInput(
    this._instance,
    this._then,
  );

  final Input$AccountUpdateInput _instance;

  final TRes Function(Input$AccountUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sfwFilterPreference = _undefined,
    Object? country = _undefined,
    Object? siteTheme = _undefined,
    Object? ratingSystem = _undefined,
    Object? preferredTitleLanguage = _undefined,
    Object? timeZone = _undefined,
  }) => _then(
    Input$AccountUpdateInput._({
      ..._instance._$data,
      if (sfwFilterPreference != _undefined)
        'sfwFilterPreference':
            (sfwFilterPreference as Enum$SfwFilterPreferenceEnum?),
      if (country != _undefined) 'country': (country as String?),
      if (siteTheme != _undefined)
        'siteTheme': (siteTheme as Enum$SiteThemeEnum?),
      if (ratingSystem != _undefined)
        'ratingSystem': (ratingSystem as Enum$RatingSystemEnum?),
      if (preferredTitleLanguage != _undefined)
        'preferredTitleLanguage':
            (preferredTitleLanguage as Enum$TitleLanguagePreferenceEnum?),
      if (timeZone != _undefined) 'timeZone': (timeZone as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$AccountUpdateInput<TRes>
    implements CopyWith$Input$AccountUpdateInput<TRes> {
  _CopyWithStubImpl$Input$AccountUpdateInput(this._res);

  TRes _res;

  call({
    Enum$SfwFilterPreferenceEnum? sfwFilterPreference,
    String? country,
    Enum$SiteThemeEnum? siteTheme,
    Enum$RatingSystemEnum? ratingSystem,
    Enum$TitleLanguagePreferenceEnum? preferredTitleLanguage,
    String? timeZone,
  }) => _res;
}

class Input$AnimeCreateInput {
  factory Input$AnimeCreateInput({
    required Input$TitlesListInput titles,
    required String description,
    Enum$AgeRatingEnum? ageRating,
    String? ageRatingGuide,
    String? tba,
    String? startDate,
    String? endDate,
    String? posterImage,
    String? bannerImage,
    String? youtubeTrailerVideoId,
    int? episodeCount,
    int? episodeLength,
  }) => Input$AnimeCreateInput._({
    r'titles': titles,
    r'description': description,
    if (ageRating != null) r'ageRating': ageRating,
    if (ageRatingGuide != null) r'ageRatingGuide': ageRatingGuide,
    if (tba != null) r'tba': tba,
    if (startDate != null) r'startDate': startDate,
    if (endDate != null) r'endDate': endDate,
    if (posterImage != null) r'posterImage': posterImage,
    if (bannerImage != null) r'bannerImage': bannerImage,
    if (youtubeTrailerVideoId != null)
      r'youtubeTrailerVideoId': youtubeTrailerVideoId,
    if (episodeCount != null) r'episodeCount': episodeCount,
    if (episodeLength != null) r'episodeLength': episodeLength,
  });

  Input$AnimeCreateInput._(this._$data);

  factory Input$AnimeCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$titles = data['titles'];
    result$data['titles'] = Input$TitlesListInput.fromJson(
      (l$titles as Map<String, dynamic>),
    );
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    if (data.containsKey('ageRating')) {
      final l$ageRating = data['ageRating'];
      result$data['ageRating'] = l$ageRating == null
          ? null
          : fromJson$Enum$AgeRatingEnum((l$ageRating as String));
    }
    if (data.containsKey('ageRatingGuide')) {
      final l$ageRatingGuide = data['ageRatingGuide'];
      result$data['ageRatingGuide'] = (l$ageRatingGuide as String?);
    }
    if (data.containsKey('tba')) {
      final l$tba = data['tba'];
      result$data['tba'] = (l$tba as String?);
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('posterImage')) {
      final l$posterImage = data['posterImage'];
      result$data['posterImage'] = (l$posterImage as String?);
    }
    if (data.containsKey('bannerImage')) {
      final l$bannerImage = data['bannerImage'];
      result$data['bannerImage'] = (l$bannerImage as String?);
    }
    if (data.containsKey('youtubeTrailerVideoId')) {
      final l$youtubeTrailerVideoId = data['youtubeTrailerVideoId'];
      result$data['youtubeTrailerVideoId'] =
          (l$youtubeTrailerVideoId as String?);
    }
    if (data.containsKey('episodeCount')) {
      final l$episodeCount = data['episodeCount'];
      result$data['episodeCount'] = (l$episodeCount as int?);
    }
    if (data.containsKey('episodeLength')) {
      final l$episodeLength = data['episodeLength'];
      result$data['episodeLength'] = (l$episodeLength as int?);
    }
    return Input$AnimeCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TitlesListInput get titles =>
      (_$data['titles'] as Input$TitlesListInput);

  String get description => (_$data['description'] as String);

  Enum$AgeRatingEnum? get ageRating =>
      (_$data['ageRating'] as Enum$AgeRatingEnum?);

  String? get ageRatingGuide => (_$data['ageRatingGuide'] as String?);

  String? get tba => (_$data['tba'] as String?);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get posterImage => (_$data['posterImage'] as String?);

  String? get bannerImage => (_$data['bannerImage'] as String?);

  String? get youtubeTrailerVideoId =>
      (_$data['youtubeTrailerVideoId'] as String?);

  int? get episodeCount => (_$data['episodeCount'] as int?);

  int? get episodeLength => (_$data['episodeLength'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$titles = titles;
    result$data['titles'] = l$titles.toJson();
    final l$description = description;
    result$data['description'] = l$description;
    if (_$data.containsKey('ageRating')) {
      final l$ageRating = ageRating;
      result$data['ageRating'] = l$ageRating == null
          ? null
          : toJson$Enum$AgeRatingEnum(l$ageRating);
    }
    if (_$data.containsKey('ageRatingGuide')) {
      final l$ageRatingGuide = ageRatingGuide;
      result$data['ageRatingGuide'] = l$ageRatingGuide;
    }
    if (_$data.containsKey('tba')) {
      final l$tba = tba;
      result$data['tba'] = l$tba;
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('posterImage')) {
      final l$posterImage = posterImage;
      result$data['posterImage'] = l$posterImage;
    }
    if (_$data.containsKey('bannerImage')) {
      final l$bannerImage = bannerImage;
      result$data['bannerImage'] = l$bannerImage;
    }
    if (_$data.containsKey('youtubeTrailerVideoId')) {
      final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
      result$data['youtubeTrailerVideoId'] = l$youtubeTrailerVideoId;
    }
    if (_$data.containsKey('episodeCount')) {
      final l$episodeCount = episodeCount;
      result$data['episodeCount'] = l$episodeCount;
    }
    if (_$data.containsKey('episodeLength')) {
      final l$episodeLength = episodeLength;
      result$data['episodeLength'] = l$episodeLength;
    }
    return result$data;
  }

  CopyWith$Input$AnimeCreateInput<Input$AnimeCreateInput> get copyWith =>
      CopyWith$Input$AnimeCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AnimeCreateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$titles = titles;
    final lOther$titles = other.titles;
    if (l$titles != lOther$titles) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$ageRating = ageRating;
    final lOther$ageRating = other.ageRating;
    if (_$data.containsKey('ageRating') !=
        other._$data.containsKey('ageRating')) {
      return false;
    }
    if (l$ageRating != lOther$ageRating) {
      return false;
    }
    final l$ageRatingGuide = ageRatingGuide;
    final lOther$ageRatingGuide = other.ageRatingGuide;
    if (_$data.containsKey('ageRatingGuide') !=
        other._$data.containsKey('ageRatingGuide')) {
      return false;
    }
    if (l$ageRatingGuide != lOther$ageRatingGuide) {
      return false;
    }
    final l$tba = tba;
    final lOther$tba = other.tba;
    if (_$data.containsKey('tba') != other._$data.containsKey('tba')) {
      return false;
    }
    if (l$tba != lOther$tba) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$posterImage = posterImage;
    final lOther$posterImage = other.posterImage;
    if (_$data.containsKey('posterImage') !=
        other._$data.containsKey('posterImage')) {
      return false;
    }
    if (l$posterImage != lOther$posterImage) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (_$data.containsKey('bannerImage') !=
        other._$data.containsKey('bannerImage')) {
      return false;
    }
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
    final lOther$youtubeTrailerVideoId = other.youtubeTrailerVideoId;
    if (_$data.containsKey('youtubeTrailerVideoId') !=
        other._$data.containsKey('youtubeTrailerVideoId')) {
      return false;
    }
    if (l$youtubeTrailerVideoId != lOther$youtubeTrailerVideoId) {
      return false;
    }
    final l$episodeCount = episodeCount;
    final lOther$episodeCount = other.episodeCount;
    if (_$data.containsKey('episodeCount') !=
        other._$data.containsKey('episodeCount')) {
      return false;
    }
    if (l$episodeCount != lOther$episodeCount) {
      return false;
    }
    final l$episodeLength = episodeLength;
    final lOther$episodeLength = other.episodeLength;
    if (_$data.containsKey('episodeLength') !=
        other._$data.containsKey('episodeLength')) {
      return false;
    }
    if (l$episodeLength != lOther$episodeLength) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$titles = titles;
    final l$description = description;
    final l$ageRating = ageRating;
    final l$ageRatingGuide = ageRatingGuide;
    final l$tba = tba;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$posterImage = posterImage;
    final l$bannerImage = bannerImage;
    final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
    final l$episodeCount = episodeCount;
    final l$episodeLength = episodeLength;
    return Object.hashAll([
      l$titles,
      l$description,
      _$data.containsKey('ageRating') ? l$ageRating : const {},
      _$data.containsKey('ageRatingGuide') ? l$ageRatingGuide : const {},
      _$data.containsKey('tba') ? l$tba : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('posterImage') ? l$posterImage : const {},
      _$data.containsKey('bannerImage') ? l$bannerImage : const {},
      _$data.containsKey('youtubeTrailerVideoId')
          ? l$youtubeTrailerVideoId
          : const {},
      _$data.containsKey('episodeCount') ? l$episodeCount : const {},
      _$data.containsKey('episodeLength') ? l$episodeLength : const {},
    ]);
  }
}

abstract class CopyWith$Input$AnimeCreateInput<TRes> {
  factory CopyWith$Input$AnimeCreateInput(
    Input$AnimeCreateInput instance,
    TRes Function(Input$AnimeCreateInput) then,
  ) = _CopyWithImpl$Input$AnimeCreateInput;

  factory CopyWith$Input$AnimeCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AnimeCreateInput;

  TRes call({
    Input$TitlesListInput? titles,
    String? description,
    Enum$AgeRatingEnum? ageRating,
    String? ageRatingGuide,
    String? tba,
    String? startDate,
    String? endDate,
    String? posterImage,
    String? bannerImage,
    String? youtubeTrailerVideoId,
    int? episodeCount,
    int? episodeLength,
  });
  CopyWith$Input$TitlesListInput<TRes> get titles;
}

class _CopyWithImpl$Input$AnimeCreateInput<TRes>
    implements CopyWith$Input$AnimeCreateInput<TRes> {
  _CopyWithImpl$Input$AnimeCreateInput(
    this._instance,
    this._then,
  );

  final Input$AnimeCreateInput _instance;

  final TRes Function(Input$AnimeCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? titles = _undefined,
    Object? description = _undefined,
    Object? ageRating = _undefined,
    Object? ageRatingGuide = _undefined,
    Object? tba = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? posterImage = _undefined,
    Object? bannerImage = _undefined,
    Object? youtubeTrailerVideoId = _undefined,
    Object? episodeCount = _undefined,
    Object? episodeLength = _undefined,
  }) => _then(
    Input$AnimeCreateInput._({
      ..._instance._$data,
      if (titles != _undefined && titles != null)
        'titles': (titles as Input$TitlesListInput),
      if (description != _undefined && description != null)
        'description': (description as String),
      if (ageRating != _undefined)
        'ageRating': (ageRating as Enum$AgeRatingEnum?),
      if (ageRatingGuide != _undefined)
        'ageRatingGuide': (ageRatingGuide as String?),
      if (tba != _undefined) 'tba': (tba as String?),
      if (startDate != _undefined) 'startDate': (startDate as String?),
      if (endDate != _undefined) 'endDate': (endDate as String?),
      if (posterImage != _undefined) 'posterImage': (posterImage as String?),
      if (bannerImage != _undefined) 'bannerImage': (bannerImage as String?),
      if (youtubeTrailerVideoId != _undefined)
        'youtubeTrailerVideoId': (youtubeTrailerVideoId as String?),
      if (episodeCount != _undefined) 'episodeCount': (episodeCount as int?),
      if (episodeLength != _undefined) 'episodeLength': (episodeLength as int?),
    }),
  );

  CopyWith$Input$TitlesListInput<TRes> get titles {
    final local$titles = _instance.titles;
    return CopyWith$Input$TitlesListInput(local$titles, (e) => call(titles: e));
  }
}

class _CopyWithStubImpl$Input$AnimeCreateInput<TRes>
    implements CopyWith$Input$AnimeCreateInput<TRes> {
  _CopyWithStubImpl$Input$AnimeCreateInput(this._res);

  TRes _res;

  call({
    Input$TitlesListInput? titles,
    String? description,
    Enum$AgeRatingEnum? ageRating,
    String? ageRatingGuide,
    String? tba,
    String? startDate,
    String? endDate,
    String? posterImage,
    String? bannerImage,
    String? youtubeTrailerVideoId,
    int? episodeCount,
    int? episodeLength,
  }) => _res;

  CopyWith$Input$TitlesListInput<TRes> get titles =>
      CopyWith$Input$TitlesListInput.stub(_res);
}

class Input$AnimeUpdateInput {
  factory Input$AnimeUpdateInput({
    required String id,
    Input$TitlesListInput? titles,
    String? description,
    Enum$AgeRatingEnum? ageRating,
    String? ageRatingGuide,
    String? tba,
    String? startDate,
    String? endDate,
    String? posterImage,
    String? bannerImage,
    String? youtubeTrailerVideoId,
    int? episodeCount,
    int? episodeLength,
  }) => Input$AnimeUpdateInput._({
    r'id': id,
    if (titles != null) r'titles': titles,
    if (description != null) r'description': description,
    if (ageRating != null) r'ageRating': ageRating,
    if (ageRatingGuide != null) r'ageRatingGuide': ageRatingGuide,
    if (tba != null) r'tba': tba,
    if (startDate != null) r'startDate': startDate,
    if (endDate != null) r'endDate': endDate,
    if (posterImage != null) r'posterImage': posterImage,
    if (bannerImage != null) r'bannerImage': bannerImage,
    if (youtubeTrailerVideoId != null)
      r'youtubeTrailerVideoId': youtubeTrailerVideoId,
    if (episodeCount != null) r'episodeCount': episodeCount,
    if (episodeLength != null) r'episodeLength': episodeLength,
  });

  Input$AnimeUpdateInput._(this._$data);

  factory Input$AnimeUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('titles')) {
      final l$titles = data['titles'];
      result$data['titles'] = l$titles == null
          ? null
          : Input$TitlesListInput.fromJson((l$titles as Map<String, dynamic>));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('ageRating')) {
      final l$ageRating = data['ageRating'];
      result$data['ageRating'] = l$ageRating == null
          ? null
          : fromJson$Enum$AgeRatingEnum((l$ageRating as String));
    }
    if (data.containsKey('ageRatingGuide')) {
      final l$ageRatingGuide = data['ageRatingGuide'];
      result$data['ageRatingGuide'] = (l$ageRatingGuide as String?);
    }
    if (data.containsKey('tba')) {
      final l$tba = data['tba'];
      result$data['tba'] = (l$tba as String?);
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('posterImage')) {
      final l$posterImage = data['posterImage'];
      result$data['posterImage'] = (l$posterImage as String?);
    }
    if (data.containsKey('bannerImage')) {
      final l$bannerImage = data['bannerImage'];
      result$data['bannerImage'] = (l$bannerImage as String?);
    }
    if (data.containsKey('youtubeTrailerVideoId')) {
      final l$youtubeTrailerVideoId = data['youtubeTrailerVideoId'];
      result$data['youtubeTrailerVideoId'] =
          (l$youtubeTrailerVideoId as String?);
    }
    if (data.containsKey('episodeCount')) {
      final l$episodeCount = data['episodeCount'];
      result$data['episodeCount'] = (l$episodeCount as int?);
    }
    if (data.containsKey('episodeLength')) {
      final l$episodeLength = data['episodeLength'];
      result$data['episodeLength'] = (l$episodeLength as int?);
    }
    return Input$AnimeUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$TitlesListInput? get titles =>
      (_$data['titles'] as Input$TitlesListInput?);

  String? get description => (_$data['description'] as String?);

  Enum$AgeRatingEnum? get ageRating =>
      (_$data['ageRating'] as Enum$AgeRatingEnum?);

  String? get ageRatingGuide => (_$data['ageRatingGuide'] as String?);

  String? get tba => (_$data['tba'] as String?);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get posterImage => (_$data['posterImage'] as String?);

  String? get bannerImage => (_$data['bannerImage'] as String?);

  String? get youtubeTrailerVideoId =>
      (_$data['youtubeTrailerVideoId'] as String?);

  int? get episodeCount => (_$data['episodeCount'] as int?);

  int? get episodeLength => (_$data['episodeLength'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('titles')) {
      final l$titles = titles;
      result$data['titles'] = l$titles?.toJson();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('ageRating')) {
      final l$ageRating = ageRating;
      result$data['ageRating'] = l$ageRating == null
          ? null
          : toJson$Enum$AgeRatingEnum(l$ageRating);
    }
    if (_$data.containsKey('ageRatingGuide')) {
      final l$ageRatingGuide = ageRatingGuide;
      result$data['ageRatingGuide'] = l$ageRatingGuide;
    }
    if (_$data.containsKey('tba')) {
      final l$tba = tba;
      result$data['tba'] = l$tba;
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('posterImage')) {
      final l$posterImage = posterImage;
      result$data['posterImage'] = l$posterImage;
    }
    if (_$data.containsKey('bannerImage')) {
      final l$bannerImage = bannerImage;
      result$data['bannerImage'] = l$bannerImage;
    }
    if (_$data.containsKey('youtubeTrailerVideoId')) {
      final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
      result$data['youtubeTrailerVideoId'] = l$youtubeTrailerVideoId;
    }
    if (_$data.containsKey('episodeCount')) {
      final l$episodeCount = episodeCount;
      result$data['episodeCount'] = l$episodeCount;
    }
    if (_$data.containsKey('episodeLength')) {
      final l$episodeLength = episodeLength;
      result$data['episodeLength'] = l$episodeLength;
    }
    return result$data;
  }

  CopyWith$Input$AnimeUpdateInput<Input$AnimeUpdateInput> get copyWith =>
      CopyWith$Input$AnimeUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AnimeUpdateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$titles = titles;
    final lOther$titles = other.titles;
    if (_$data.containsKey('titles') != other._$data.containsKey('titles')) {
      return false;
    }
    if (l$titles != lOther$titles) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$ageRating = ageRating;
    final lOther$ageRating = other.ageRating;
    if (_$data.containsKey('ageRating') !=
        other._$data.containsKey('ageRating')) {
      return false;
    }
    if (l$ageRating != lOther$ageRating) {
      return false;
    }
    final l$ageRatingGuide = ageRatingGuide;
    final lOther$ageRatingGuide = other.ageRatingGuide;
    if (_$data.containsKey('ageRatingGuide') !=
        other._$data.containsKey('ageRatingGuide')) {
      return false;
    }
    if (l$ageRatingGuide != lOther$ageRatingGuide) {
      return false;
    }
    final l$tba = tba;
    final lOther$tba = other.tba;
    if (_$data.containsKey('tba') != other._$data.containsKey('tba')) {
      return false;
    }
    if (l$tba != lOther$tba) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$posterImage = posterImage;
    final lOther$posterImage = other.posterImage;
    if (_$data.containsKey('posterImage') !=
        other._$data.containsKey('posterImage')) {
      return false;
    }
    if (l$posterImage != lOther$posterImage) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (_$data.containsKey('bannerImage') !=
        other._$data.containsKey('bannerImage')) {
      return false;
    }
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
    final lOther$youtubeTrailerVideoId = other.youtubeTrailerVideoId;
    if (_$data.containsKey('youtubeTrailerVideoId') !=
        other._$data.containsKey('youtubeTrailerVideoId')) {
      return false;
    }
    if (l$youtubeTrailerVideoId != lOther$youtubeTrailerVideoId) {
      return false;
    }
    final l$episodeCount = episodeCount;
    final lOther$episodeCount = other.episodeCount;
    if (_$data.containsKey('episodeCount') !=
        other._$data.containsKey('episodeCount')) {
      return false;
    }
    if (l$episodeCount != lOther$episodeCount) {
      return false;
    }
    final l$episodeLength = episodeLength;
    final lOther$episodeLength = other.episodeLength;
    if (_$data.containsKey('episodeLength') !=
        other._$data.containsKey('episodeLength')) {
      return false;
    }
    if (l$episodeLength != lOther$episodeLength) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$titles = titles;
    final l$description = description;
    final l$ageRating = ageRating;
    final l$ageRatingGuide = ageRatingGuide;
    final l$tba = tba;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$posterImage = posterImage;
    final l$bannerImage = bannerImage;
    final l$youtubeTrailerVideoId = youtubeTrailerVideoId;
    final l$episodeCount = episodeCount;
    final l$episodeLength = episodeLength;
    return Object.hashAll([
      l$id,
      _$data.containsKey('titles') ? l$titles : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('ageRating') ? l$ageRating : const {},
      _$data.containsKey('ageRatingGuide') ? l$ageRatingGuide : const {},
      _$data.containsKey('tba') ? l$tba : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('posterImage') ? l$posterImage : const {},
      _$data.containsKey('bannerImage') ? l$bannerImage : const {},
      _$data.containsKey('youtubeTrailerVideoId')
          ? l$youtubeTrailerVideoId
          : const {},
      _$data.containsKey('episodeCount') ? l$episodeCount : const {},
      _$data.containsKey('episodeLength') ? l$episodeLength : const {},
    ]);
  }
}

abstract class CopyWith$Input$AnimeUpdateInput<TRes> {
  factory CopyWith$Input$AnimeUpdateInput(
    Input$AnimeUpdateInput instance,
    TRes Function(Input$AnimeUpdateInput) then,
  ) = _CopyWithImpl$Input$AnimeUpdateInput;

  factory CopyWith$Input$AnimeUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AnimeUpdateInput;

  TRes call({
    String? id,
    Input$TitlesListInput? titles,
    String? description,
    Enum$AgeRatingEnum? ageRating,
    String? ageRatingGuide,
    String? tba,
    String? startDate,
    String? endDate,
    String? posterImage,
    String? bannerImage,
    String? youtubeTrailerVideoId,
    int? episodeCount,
    int? episodeLength,
  });
  CopyWith$Input$TitlesListInput<TRes> get titles;
}

class _CopyWithImpl$Input$AnimeUpdateInput<TRes>
    implements CopyWith$Input$AnimeUpdateInput<TRes> {
  _CopyWithImpl$Input$AnimeUpdateInput(
    this._instance,
    this._then,
  );

  final Input$AnimeUpdateInput _instance;

  final TRes Function(Input$AnimeUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? titles = _undefined,
    Object? description = _undefined,
    Object? ageRating = _undefined,
    Object? ageRatingGuide = _undefined,
    Object? tba = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? posterImage = _undefined,
    Object? bannerImage = _undefined,
    Object? youtubeTrailerVideoId = _undefined,
    Object? episodeCount = _undefined,
    Object? episodeLength = _undefined,
  }) => _then(
    Input$AnimeUpdateInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (titles != _undefined) 'titles': (titles as Input$TitlesListInput?),
      if (description != _undefined) 'description': (description as String?),
      if (ageRating != _undefined)
        'ageRating': (ageRating as Enum$AgeRatingEnum?),
      if (ageRatingGuide != _undefined)
        'ageRatingGuide': (ageRatingGuide as String?),
      if (tba != _undefined) 'tba': (tba as String?),
      if (startDate != _undefined) 'startDate': (startDate as String?),
      if (endDate != _undefined) 'endDate': (endDate as String?),
      if (posterImage != _undefined) 'posterImage': (posterImage as String?),
      if (bannerImage != _undefined) 'bannerImage': (bannerImage as String?),
      if (youtubeTrailerVideoId != _undefined)
        'youtubeTrailerVideoId': (youtubeTrailerVideoId as String?),
      if (episodeCount != _undefined) 'episodeCount': (episodeCount as int?),
      if (episodeLength != _undefined) 'episodeLength': (episodeLength as int?),
    }),
  );

  CopyWith$Input$TitlesListInput<TRes> get titles {
    final local$titles = _instance.titles;
    return local$titles == null
        ? CopyWith$Input$TitlesListInput.stub(_then(_instance))
        : CopyWith$Input$TitlesListInput(local$titles, (e) => call(titles: e));
  }
}

class _CopyWithStubImpl$Input$AnimeUpdateInput<TRes>
    implements CopyWith$Input$AnimeUpdateInput<TRes> {
  _CopyWithStubImpl$Input$AnimeUpdateInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$TitlesListInput? titles,
    String? description,
    Enum$AgeRatingEnum? ageRating,
    String? ageRatingGuide,
    String? tba,
    String? startDate,
    String? endDate,
    String? posterImage,
    String? bannerImage,
    String? youtubeTrailerVideoId,
    int? episodeCount,
    int? episodeLength,
  }) => _res;

  CopyWith$Input$TitlesListInput<TRes> get titles =>
      CopyWith$Input$TitlesListInput.stub(_res);
}

class Input$BlockCreateInput {
  factory Input$BlockCreateInput({required String blockedId}) =>
      Input$BlockCreateInput._({
        r'blockedId': blockedId,
      });

  Input$BlockCreateInput._(this._$data);

  factory Input$BlockCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$blockedId = data['blockedId'];
    result$data['blockedId'] = (l$blockedId as String);
    return Input$BlockCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get blockedId => (_$data['blockedId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$blockedId = blockedId;
    result$data['blockedId'] = l$blockedId;
    return result$data;
  }

  CopyWith$Input$BlockCreateInput<Input$BlockCreateInput> get copyWith =>
      CopyWith$Input$BlockCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BlockCreateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$blockedId = blockedId;
    final lOther$blockedId = other.blockedId;
    if (l$blockedId != lOther$blockedId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$blockedId = blockedId;
    return Object.hashAll([l$blockedId]);
  }
}

abstract class CopyWith$Input$BlockCreateInput<TRes> {
  factory CopyWith$Input$BlockCreateInput(
    Input$BlockCreateInput instance,
    TRes Function(Input$BlockCreateInput) then,
  ) = _CopyWithImpl$Input$BlockCreateInput;

  factory CopyWith$Input$BlockCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BlockCreateInput;

  TRes call({String? blockedId});
}

class _CopyWithImpl$Input$BlockCreateInput<TRes>
    implements CopyWith$Input$BlockCreateInput<TRes> {
  _CopyWithImpl$Input$BlockCreateInput(
    this._instance,
    this._then,
  );

  final Input$BlockCreateInput _instance;

  final TRes Function(Input$BlockCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? blockedId = _undefined}) => _then(
    Input$BlockCreateInput._({
      ..._instance._$data,
      if (blockedId != _undefined && blockedId != null)
        'blockedId': (blockedId as String),
    }),
  );
}

class _CopyWithStubImpl$Input$BlockCreateInput<TRes>
    implements CopyWith$Input$BlockCreateInput<TRes> {
  _CopyWithStubImpl$Input$BlockCreateInput(this._res);

  TRes _res;

  call({String? blockedId}) => _res;
}

class Input$BlockDeleteInput {
  factory Input$BlockDeleteInput({required String blockId}) =>
      Input$BlockDeleteInput._({
        r'blockId': blockId,
      });

  Input$BlockDeleteInput._(this._$data);

  factory Input$BlockDeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$blockId = data['blockId'];
    result$data['blockId'] = (l$blockId as String);
    return Input$BlockDeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get blockId => (_$data['blockId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$blockId = blockId;
    result$data['blockId'] = l$blockId;
    return result$data;
  }

  CopyWith$Input$BlockDeleteInput<Input$BlockDeleteInput> get copyWith =>
      CopyWith$Input$BlockDeleteInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BlockDeleteInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$blockId = blockId;
    final lOther$blockId = other.blockId;
    if (l$blockId != lOther$blockId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$blockId = blockId;
    return Object.hashAll([l$blockId]);
  }
}

abstract class CopyWith$Input$BlockDeleteInput<TRes> {
  factory CopyWith$Input$BlockDeleteInput(
    Input$BlockDeleteInput instance,
    TRes Function(Input$BlockDeleteInput) then,
  ) = _CopyWithImpl$Input$BlockDeleteInput;

  factory CopyWith$Input$BlockDeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BlockDeleteInput;

  TRes call({String? blockId});
}

class _CopyWithImpl$Input$BlockDeleteInput<TRes>
    implements CopyWith$Input$BlockDeleteInput<TRes> {
  _CopyWithImpl$Input$BlockDeleteInput(
    this._instance,
    this._then,
  );

  final Input$BlockDeleteInput _instance;

  final TRes Function(Input$BlockDeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? blockId = _undefined}) => _then(
    Input$BlockDeleteInput._({
      ..._instance._$data,
      if (blockId != _undefined && blockId != null)
        'blockId': (blockId as String),
    }),
  );
}

class _CopyWithStubImpl$Input$BlockDeleteInput<TRes>
    implements CopyWith$Input$BlockDeleteInput<TRes> {
  _CopyWithStubImpl$Input$BlockDeleteInput(this._res);

  TRes _res;

  call({String? blockId}) => _res;
}

class Input$ChapterSortOption {
  factory Input$ChapterSortOption({
    required Enum$ChapterSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$ChapterSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$ChapterSortOption._(this._$data);

  factory Input$ChapterSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$ChapterSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$ChapterSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ChapterSortEnum get $on => (_$data['on'] as Enum$ChapterSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$ChapterSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$ChapterSortOption<Input$ChapterSortOption> get copyWith =>
      CopyWith$Input$ChapterSortOption(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ChapterSortOption || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$ChapterSortOption<TRes> {
  factory CopyWith$Input$ChapterSortOption(
    Input$ChapterSortOption instance,
    TRes Function(Input$ChapterSortOption) then,
  ) = _CopyWithImpl$Input$ChapterSortOption;

  factory CopyWith$Input$ChapterSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$ChapterSortOption;

  TRes call({
    Enum$ChapterSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$ChapterSortOption<TRes>
    implements CopyWith$Input$ChapterSortOption<TRes> {
  _CopyWithImpl$Input$ChapterSortOption(
    this._instance,
    this._then,
  );

  final Input$ChapterSortOption _instance;

  final TRes Function(Input$ChapterSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$ChapterSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null) 'on': ($on as Enum$ChapterSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$ChapterSortOption<TRes>
    implements CopyWith$Input$ChapterSortOption<TRes> {
  _CopyWithStubImpl$Input$ChapterSortOption(this._res);

  TRes _res;

  call({
    Enum$ChapterSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$CharacterVoiceSortOption {
  factory Input$CharacterVoiceSortOption({
    required Enum$CharacterVoiceSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$CharacterVoiceSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$CharacterVoiceSortOption._(this._$data);

  factory Input$CharacterVoiceSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$CharacterVoiceSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$CharacterVoiceSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CharacterVoiceSortEnum get $on =>
      (_$data['on'] as Enum$CharacterVoiceSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$CharacterVoiceSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$CharacterVoiceSortOption<Input$CharacterVoiceSortOption>
  get copyWith => CopyWith$Input$CharacterVoiceSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CharacterVoiceSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$CharacterVoiceSortOption<TRes> {
  factory CopyWith$Input$CharacterVoiceSortOption(
    Input$CharacterVoiceSortOption instance,
    TRes Function(Input$CharacterVoiceSortOption) then,
  ) = _CopyWithImpl$Input$CharacterVoiceSortOption;

  factory CopyWith$Input$CharacterVoiceSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$CharacterVoiceSortOption;

  TRes call({
    Enum$CharacterVoiceSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$CharacterVoiceSortOption<TRes>
    implements CopyWith$Input$CharacterVoiceSortOption<TRes> {
  _CopyWithImpl$Input$CharacterVoiceSortOption(
    this._instance,
    this._then,
  );

  final Input$CharacterVoiceSortOption _instance;

  final TRes Function(Input$CharacterVoiceSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$CharacterVoiceSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$CharacterVoiceSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$CharacterVoiceSortOption<TRes>
    implements CopyWith$Input$CharacterVoiceSortOption<TRes> {
  _CopyWithStubImpl$Input$CharacterVoiceSortOption(this._res);

  TRes _res;

  call({
    Enum$CharacterVoiceSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$CommentLikeSortOption {
  factory Input$CommentLikeSortOption({
    required Enum$CommentLikeSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$CommentLikeSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$CommentLikeSortOption._(this._$data);

  factory Input$CommentLikeSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$CommentLikeSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$CommentLikeSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CommentLikeSortEnum get $on =>
      (_$data['on'] as Enum$CommentLikeSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$CommentLikeSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$CommentLikeSortOption<Input$CommentLikeSortOption>
  get copyWith => CopyWith$Input$CommentLikeSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CommentLikeSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$CommentLikeSortOption<TRes> {
  factory CopyWith$Input$CommentLikeSortOption(
    Input$CommentLikeSortOption instance,
    TRes Function(Input$CommentLikeSortOption) then,
  ) = _CopyWithImpl$Input$CommentLikeSortOption;

  factory CopyWith$Input$CommentLikeSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$CommentLikeSortOption;

  TRes call({
    Enum$CommentLikeSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$CommentLikeSortOption<TRes>
    implements CopyWith$Input$CommentLikeSortOption<TRes> {
  _CopyWithImpl$Input$CommentLikeSortOption(
    this._instance,
    this._then,
  );

  final Input$CommentLikeSortOption _instance;

  final TRes Function(Input$CommentLikeSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$CommentLikeSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$CommentLikeSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$CommentLikeSortOption<TRes>
    implements CopyWith$Input$CommentLikeSortOption<TRes> {
  _CopyWithStubImpl$Input$CommentLikeSortOption(this._res);

  TRes _res;

  call({
    Enum$CommentLikeSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$CommentSortOption {
  factory Input$CommentSortOption({
    required Enum$CommentSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$CommentSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$CommentSortOption._(this._$data);

  factory Input$CommentSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$CommentSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$CommentSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CommentSortEnum get $on => (_$data['on'] as Enum$CommentSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$CommentSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$CommentSortOption<Input$CommentSortOption> get copyWith =>
      CopyWith$Input$CommentSortOption(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CommentSortOption || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$CommentSortOption<TRes> {
  factory CopyWith$Input$CommentSortOption(
    Input$CommentSortOption instance,
    TRes Function(Input$CommentSortOption) then,
  ) = _CopyWithImpl$Input$CommentSortOption;

  factory CopyWith$Input$CommentSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$CommentSortOption;

  TRes call({
    Enum$CommentSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$CommentSortOption<TRes>
    implements CopyWith$Input$CommentSortOption<TRes> {
  _CopyWithImpl$Input$CommentSortOption(
    this._instance,
    this._then,
  );

  final Input$CommentSortOption _instance;

  final TRes Function(Input$CommentSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$CommentSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null) 'on': ($on as Enum$CommentSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$CommentSortOption<TRes>
    implements CopyWith$Input$CommentSortOption<TRes> {
  _CopyWithStubImpl$Input$CommentSortOption(this._res);

  TRes _res;

  call({
    Enum$CommentSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$EpisodeCreateInput {
  factory Input$EpisodeCreateInput({
    required String mediaId,
    required Enum$MediaTypeEnum mediaType,
    required Input$TitlesListInput titles,
    required int number,
    String? description,
    int? length,
    String? releasedAt,
    String? thumbnailImage,
  }) => Input$EpisodeCreateInput._({
    r'mediaId': mediaId,
    r'mediaType': mediaType,
    r'titles': titles,
    r'number': number,
    if (description != null) r'description': description,
    if (length != null) r'length': length,
    if (releasedAt != null) r'releasedAt': releasedAt,
    if (thumbnailImage != null) r'thumbnailImage': thumbnailImage,
  });

  Input$EpisodeCreateInput._(this._$data);

  factory Input$EpisodeCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaId = data['mediaId'];
    result$data['mediaId'] = (l$mediaId as String);
    final l$mediaType = data['mediaType'];
    result$data['mediaType'] = fromJson$Enum$MediaTypeEnum(
      (l$mediaType as String),
    );
    final l$titles = data['titles'];
    result$data['titles'] = Input$TitlesListInput.fromJson(
      (l$titles as Map<String, dynamic>),
    );
    final l$number = data['number'];
    result$data['number'] = (l$number as int);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('length')) {
      final l$length = data['length'];
      result$data['length'] = (l$length as int?);
    }
    if (data.containsKey('releasedAt')) {
      final l$releasedAt = data['releasedAt'];
      result$data['releasedAt'] = (l$releasedAt as String?);
    }
    if (data.containsKey('thumbnailImage')) {
      final l$thumbnailImage = data['thumbnailImage'];
      result$data['thumbnailImage'] = (l$thumbnailImage as String?);
    }
    return Input$EpisodeCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaId => (_$data['mediaId'] as String);

  Enum$MediaTypeEnum get mediaType =>
      (_$data['mediaType'] as Enum$MediaTypeEnum);

  Input$TitlesListInput get titles =>
      (_$data['titles'] as Input$TitlesListInput);

  int get number => (_$data['number'] as int);

  String? get description => (_$data['description'] as String?);

  int? get length => (_$data['length'] as int?);

  String? get releasedAt => (_$data['releasedAt'] as String?);

  String? get thumbnailImage => (_$data['thumbnailImage'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaId = mediaId;
    result$data['mediaId'] = l$mediaId;
    final l$mediaType = mediaType;
    result$data['mediaType'] = toJson$Enum$MediaTypeEnum(l$mediaType);
    final l$titles = titles;
    result$data['titles'] = l$titles.toJson();
    final l$number = number;
    result$data['number'] = l$number;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('length')) {
      final l$length = length;
      result$data['length'] = l$length;
    }
    if (_$data.containsKey('releasedAt')) {
      final l$releasedAt = releasedAt;
      result$data['releasedAt'] = l$releasedAt;
    }
    if (_$data.containsKey('thumbnailImage')) {
      final l$thumbnailImage = thumbnailImage;
      result$data['thumbnailImage'] = l$thumbnailImage;
    }
    return result$data;
  }

  CopyWith$Input$EpisodeCreateInput<Input$EpisodeCreateInput> get copyWith =>
      CopyWith$Input$EpisodeCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EpisodeCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$titles = titles;
    final lOther$titles = other.titles;
    if (l$titles != lOther$titles) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$length = length;
    final lOther$length = other.length;
    if (_$data.containsKey('length') != other._$data.containsKey('length')) {
      return false;
    }
    if (l$length != lOther$length) {
      return false;
    }
    final l$releasedAt = releasedAt;
    final lOther$releasedAt = other.releasedAt;
    if (_$data.containsKey('releasedAt') !=
        other._$data.containsKey('releasedAt')) {
      return false;
    }
    if (l$releasedAt != lOther$releasedAt) {
      return false;
    }
    final l$thumbnailImage = thumbnailImage;
    final lOther$thumbnailImage = other.thumbnailImage;
    if (_$data.containsKey('thumbnailImage') !=
        other._$data.containsKey('thumbnailImage')) {
      return false;
    }
    if (l$thumbnailImage != lOther$thumbnailImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
    final l$titles = titles;
    final l$number = number;
    final l$description = description;
    final l$length = length;
    final l$releasedAt = releasedAt;
    final l$thumbnailImage = thumbnailImage;
    return Object.hashAll([
      l$mediaId,
      l$mediaType,
      l$titles,
      l$number,
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('length') ? l$length : const {},
      _$data.containsKey('releasedAt') ? l$releasedAt : const {},
      _$data.containsKey('thumbnailImage') ? l$thumbnailImage : const {},
    ]);
  }
}

abstract class CopyWith$Input$EpisodeCreateInput<TRes> {
  factory CopyWith$Input$EpisodeCreateInput(
    Input$EpisodeCreateInput instance,
    TRes Function(Input$EpisodeCreateInput) then,
  ) = _CopyWithImpl$Input$EpisodeCreateInput;

  factory CopyWith$Input$EpisodeCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EpisodeCreateInput;

  TRes call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    Input$TitlesListInput? titles,
    int? number,
    String? description,
    int? length,
    String? releasedAt,
    String? thumbnailImage,
  });
  CopyWith$Input$TitlesListInput<TRes> get titles;
}

class _CopyWithImpl$Input$EpisodeCreateInput<TRes>
    implements CopyWith$Input$EpisodeCreateInput<TRes> {
  _CopyWithImpl$Input$EpisodeCreateInput(
    this._instance,
    this._then,
  );

  final Input$EpisodeCreateInput _instance;

  final TRes Function(Input$EpisodeCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? titles = _undefined,
    Object? number = _undefined,
    Object? description = _undefined,
    Object? length = _undefined,
    Object? releasedAt = _undefined,
    Object? thumbnailImage = _undefined,
  }) => _then(
    Input$EpisodeCreateInput._({
      ..._instance._$data,
      if (mediaId != _undefined && mediaId != null)
        'mediaId': (mediaId as String),
      if (mediaType != _undefined && mediaType != null)
        'mediaType': (mediaType as Enum$MediaTypeEnum),
      if (titles != _undefined && titles != null)
        'titles': (titles as Input$TitlesListInput),
      if (number != _undefined && number != null) 'number': (number as int),
      if (description != _undefined) 'description': (description as String?),
      if (length != _undefined) 'length': (length as int?),
      if (releasedAt != _undefined) 'releasedAt': (releasedAt as String?),
      if (thumbnailImage != _undefined)
        'thumbnailImage': (thumbnailImage as String?),
    }),
  );

  CopyWith$Input$TitlesListInput<TRes> get titles {
    final local$titles = _instance.titles;
    return CopyWith$Input$TitlesListInput(local$titles, (e) => call(titles: e));
  }
}

class _CopyWithStubImpl$Input$EpisodeCreateInput<TRes>
    implements CopyWith$Input$EpisodeCreateInput<TRes> {
  _CopyWithStubImpl$Input$EpisodeCreateInput(this._res);

  TRes _res;

  call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    Input$TitlesListInput? titles,
    int? number,
    String? description,
    int? length,
    String? releasedAt,
    String? thumbnailImage,
  }) => _res;

  CopyWith$Input$TitlesListInput<TRes> get titles =>
      CopyWith$Input$TitlesListInput.stub(_res);
}

class Input$EpisodeSortOption {
  factory Input$EpisodeSortOption({
    required Enum$EpisodeSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$EpisodeSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$EpisodeSortOption._(this._$data);

  factory Input$EpisodeSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$EpisodeSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$EpisodeSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$EpisodeSortEnum get $on => (_$data['on'] as Enum$EpisodeSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$EpisodeSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$EpisodeSortOption<Input$EpisodeSortOption> get copyWith =>
      CopyWith$Input$EpisodeSortOption(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EpisodeSortOption || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$EpisodeSortOption<TRes> {
  factory CopyWith$Input$EpisodeSortOption(
    Input$EpisodeSortOption instance,
    TRes Function(Input$EpisodeSortOption) then,
  ) = _CopyWithImpl$Input$EpisodeSortOption;

  factory CopyWith$Input$EpisodeSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$EpisodeSortOption;

  TRes call({
    Enum$EpisodeSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$EpisodeSortOption<TRes>
    implements CopyWith$Input$EpisodeSortOption<TRes> {
  _CopyWithImpl$Input$EpisodeSortOption(
    this._instance,
    this._then,
  );

  final Input$EpisodeSortOption _instance;

  final TRes Function(Input$EpisodeSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$EpisodeSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null) 'on': ($on as Enum$EpisodeSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$EpisodeSortOption<TRes>
    implements CopyWith$Input$EpisodeSortOption<TRes> {
  _CopyWithStubImpl$Input$EpisodeSortOption(this._res);

  TRes _res;

  call({
    Enum$EpisodeSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$EpisodeUpdateInput {
  factory Input$EpisodeUpdateInput({
    required String id,
    Input$TitlesListInput? titles,
    int? number,
    String? description,
    int? length,
    String? releasedAt,
    String? thumbnailImage,
  }) => Input$EpisodeUpdateInput._({
    r'id': id,
    if (titles != null) r'titles': titles,
    if (number != null) r'number': number,
    if (description != null) r'description': description,
    if (length != null) r'length': length,
    if (releasedAt != null) r'releasedAt': releasedAt,
    if (thumbnailImage != null) r'thumbnailImage': thumbnailImage,
  });

  Input$EpisodeUpdateInput._(this._$data);

  factory Input$EpisodeUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('titles')) {
      final l$titles = data['titles'];
      result$data['titles'] = l$titles == null
          ? null
          : Input$TitlesListInput.fromJson((l$titles as Map<String, dynamic>));
    }
    if (data.containsKey('number')) {
      final l$number = data['number'];
      result$data['number'] = (l$number as int?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('length')) {
      final l$length = data['length'];
      result$data['length'] = (l$length as int?);
    }
    if (data.containsKey('releasedAt')) {
      final l$releasedAt = data['releasedAt'];
      result$data['releasedAt'] = (l$releasedAt as String?);
    }
    if (data.containsKey('thumbnailImage')) {
      final l$thumbnailImage = data['thumbnailImage'];
      result$data['thumbnailImage'] = (l$thumbnailImage as String?);
    }
    return Input$EpisodeUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$TitlesListInput? get titles =>
      (_$data['titles'] as Input$TitlesListInput?);

  int? get number => (_$data['number'] as int?);

  String? get description => (_$data['description'] as String?);

  int? get length => (_$data['length'] as int?);

  String? get releasedAt => (_$data['releasedAt'] as String?);

  String? get thumbnailImage => (_$data['thumbnailImage'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('titles')) {
      final l$titles = titles;
      result$data['titles'] = l$titles?.toJson();
    }
    if (_$data.containsKey('number')) {
      final l$number = number;
      result$data['number'] = l$number;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('length')) {
      final l$length = length;
      result$data['length'] = l$length;
    }
    if (_$data.containsKey('releasedAt')) {
      final l$releasedAt = releasedAt;
      result$data['releasedAt'] = l$releasedAt;
    }
    if (_$data.containsKey('thumbnailImage')) {
      final l$thumbnailImage = thumbnailImage;
      result$data['thumbnailImage'] = l$thumbnailImage;
    }
    return result$data;
  }

  CopyWith$Input$EpisodeUpdateInput<Input$EpisodeUpdateInput> get copyWith =>
      CopyWith$Input$EpisodeUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EpisodeUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$titles = titles;
    final lOther$titles = other.titles;
    if (_$data.containsKey('titles') != other._$data.containsKey('titles')) {
      return false;
    }
    if (l$titles != lOther$titles) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (_$data.containsKey('number') != other._$data.containsKey('number')) {
      return false;
    }
    if (l$number != lOther$number) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$length = length;
    final lOther$length = other.length;
    if (_$data.containsKey('length') != other._$data.containsKey('length')) {
      return false;
    }
    if (l$length != lOther$length) {
      return false;
    }
    final l$releasedAt = releasedAt;
    final lOther$releasedAt = other.releasedAt;
    if (_$data.containsKey('releasedAt') !=
        other._$data.containsKey('releasedAt')) {
      return false;
    }
    if (l$releasedAt != lOther$releasedAt) {
      return false;
    }
    final l$thumbnailImage = thumbnailImage;
    final lOther$thumbnailImage = other.thumbnailImage;
    if (_$data.containsKey('thumbnailImage') !=
        other._$data.containsKey('thumbnailImage')) {
      return false;
    }
    if (l$thumbnailImage != lOther$thumbnailImage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$titles = titles;
    final l$number = number;
    final l$description = description;
    final l$length = length;
    final l$releasedAt = releasedAt;
    final l$thumbnailImage = thumbnailImage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('titles') ? l$titles : const {},
      _$data.containsKey('number') ? l$number : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('length') ? l$length : const {},
      _$data.containsKey('releasedAt') ? l$releasedAt : const {},
      _$data.containsKey('thumbnailImage') ? l$thumbnailImage : const {},
    ]);
  }
}

abstract class CopyWith$Input$EpisodeUpdateInput<TRes> {
  factory CopyWith$Input$EpisodeUpdateInput(
    Input$EpisodeUpdateInput instance,
    TRes Function(Input$EpisodeUpdateInput) then,
  ) = _CopyWithImpl$Input$EpisodeUpdateInput;

  factory CopyWith$Input$EpisodeUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EpisodeUpdateInput;

  TRes call({
    String? id,
    Input$TitlesListInput? titles,
    int? number,
    String? description,
    int? length,
    String? releasedAt,
    String? thumbnailImage,
  });
  CopyWith$Input$TitlesListInput<TRes> get titles;
}

class _CopyWithImpl$Input$EpisodeUpdateInput<TRes>
    implements CopyWith$Input$EpisodeUpdateInput<TRes> {
  _CopyWithImpl$Input$EpisodeUpdateInput(
    this._instance,
    this._then,
  );

  final Input$EpisodeUpdateInput _instance;

  final TRes Function(Input$EpisodeUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? titles = _undefined,
    Object? number = _undefined,
    Object? description = _undefined,
    Object? length = _undefined,
    Object? releasedAt = _undefined,
    Object? thumbnailImage = _undefined,
  }) => _then(
    Input$EpisodeUpdateInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (titles != _undefined) 'titles': (titles as Input$TitlesListInput?),
      if (number != _undefined) 'number': (number as int?),
      if (description != _undefined) 'description': (description as String?),
      if (length != _undefined) 'length': (length as int?),
      if (releasedAt != _undefined) 'releasedAt': (releasedAt as String?),
      if (thumbnailImage != _undefined)
        'thumbnailImage': (thumbnailImage as String?),
    }),
  );

  CopyWith$Input$TitlesListInput<TRes> get titles {
    final local$titles = _instance.titles;
    return local$titles == null
        ? CopyWith$Input$TitlesListInput.stub(_then(_instance))
        : CopyWith$Input$TitlesListInput(local$titles, (e) => call(titles: e));
  }
}

class _CopyWithStubImpl$Input$EpisodeUpdateInput<TRes>
    implements CopyWith$Input$EpisodeUpdateInput<TRes> {
  _CopyWithStubImpl$Input$EpisodeUpdateInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$TitlesListInput? titles,
    int? number,
    String? description,
    int? length,
    String? releasedAt,
    String? thumbnailImage,
  }) => _res;

  CopyWith$Input$TitlesListInput<TRes> get titles =>
      CopyWith$Input$TitlesListInput.stub(_res);
}

class Input$FavoriteCreateInput {
  factory Input$FavoriteCreateInput({
    required String id,
    required Enum$FavoriteEnum type,
  }) => Input$FavoriteCreateInput._({
    r'id': id,
    r'type': type,
  });

  Input$FavoriteCreateInput._(this._$data);

  factory Input$FavoriteCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$FavoriteEnum((l$type as String));
    return Input$FavoriteCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Enum$FavoriteEnum get type => (_$data['type'] as Enum$FavoriteEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$type = type;
    result$data['type'] = toJson$Enum$FavoriteEnum(l$type);
    return result$data;
  }

  CopyWith$Input$FavoriteCreateInput<Input$FavoriteCreateInput> get copyWith =>
      CopyWith$Input$FavoriteCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FavoriteCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    return Object.hashAll([
      l$id,
      l$type,
    ]);
  }
}

abstract class CopyWith$Input$FavoriteCreateInput<TRes> {
  factory CopyWith$Input$FavoriteCreateInput(
    Input$FavoriteCreateInput instance,
    TRes Function(Input$FavoriteCreateInput) then,
  ) = _CopyWithImpl$Input$FavoriteCreateInput;

  factory CopyWith$Input$FavoriteCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FavoriteCreateInput;

  TRes call({
    String? id,
    Enum$FavoriteEnum? type,
  });
}

class _CopyWithImpl$Input$FavoriteCreateInput<TRes>
    implements CopyWith$Input$FavoriteCreateInput<TRes> {
  _CopyWithImpl$Input$FavoriteCreateInput(
    this._instance,
    this._then,
  );

  final Input$FavoriteCreateInput _instance;

  final TRes Function(Input$FavoriteCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
  }) => _then(
    Input$FavoriteCreateInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (type != _undefined && type != null)
        'type': (type as Enum$FavoriteEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$FavoriteCreateInput<TRes>
    implements CopyWith$Input$FavoriteCreateInput<TRes> {
  _CopyWithStubImpl$Input$FavoriteCreateInput(this._res);

  TRes _res;

  call({
    String? id,
    Enum$FavoriteEnum? type,
  }) => _res;
}

class Input$FavoriteDeleteInput {
  factory Input$FavoriteDeleteInput({required String favoriteId}) =>
      Input$FavoriteDeleteInput._({
        r'favoriteId': favoriteId,
      });

  Input$FavoriteDeleteInput._(this._$data);

  factory Input$FavoriteDeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$favoriteId = data['favoriteId'];
    result$data['favoriteId'] = (l$favoriteId as String);
    return Input$FavoriteDeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get favoriteId => (_$data['favoriteId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$favoriteId = favoriteId;
    result$data['favoriteId'] = l$favoriteId;
    return result$data;
  }

  CopyWith$Input$FavoriteDeleteInput<Input$FavoriteDeleteInput> get copyWith =>
      CopyWith$Input$FavoriteDeleteInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FavoriteDeleteInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favoriteId = favoriteId;
    final lOther$favoriteId = other.favoriteId;
    if (l$favoriteId != lOther$favoriteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$favoriteId = favoriteId;
    return Object.hashAll([l$favoriteId]);
  }
}

abstract class CopyWith$Input$FavoriteDeleteInput<TRes> {
  factory CopyWith$Input$FavoriteDeleteInput(
    Input$FavoriteDeleteInput instance,
    TRes Function(Input$FavoriteDeleteInput) then,
  ) = _CopyWithImpl$Input$FavoriteDeleteInput;

  factory CopyWith$Input$FavoriteDeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FavoriteDeleteInput;

  TRes call({String? favoriteId});
}

class _CopyWithImpl$Input$FavoriteDeleteInput<TRes>
    implements CopyWith$Input$FavoriteDeleteInput<TRes> {
  _CopyWithImpl$Input$FavoriteDeleteInput(
    this._instance,
    this._then,
  );

  final Input$FavoriteDeleteInput _instance;

  final TRes Function(Input$FavoriteDeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? favoriteId = _undefined}) => _then(
    Input$FavoriteDeleteInput._({
      ..._instance._$data,
      if (favoriteId != _undefined && favoriteId != null)
        'favoriteId': (favoriteId as String),
    }),
  );
}

class _CopyWithStubImpl$Input$FavoriteDeleteInput<TRes>
    implements CopyWith$Input$FavoriteDeleteInput<TRes> {
  _CopyWithStubImpl$Input$FavoriteDeleteInput(this._res);

  TRes _res;

  call({String? favoriteId}) => _res;
}

class Input$FollowSortOption {
  factory Input$FollowSortOption({
    required Enum$FollowSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$FollowSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$FollowSortOption._(this._$data);

  factory Input$FollowSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$FollowSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$FollowSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$FollowSortEnum get $on => (_$data['on'] as Enum$FollowSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$FollowSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$FollowSortOption<Input$FollowSortOption> get copyWith =>
      CopyWith$Input$FollowSortOption(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FollowSortOption || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$FollowSortOption<TRes> {
  factory CopyWith$Input$FollowSortOption(
    Input$FollowSortOption instance,
    TRes Function(Input$FollowSortOption) then,
  ) = _CopyWithImpl$Input$FollowSortOption;

  factory CopyWith$Input$FollowSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$FollowSortOption;

  TRes call({
    Enum$FollowSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$FollowSortOption<TRes>
    implements CopyWith$Input$FollowSortOption<TRes> {
  _CopyWithImpl$Input$FollowSortOption(
    this._instance,
    this._then,
  );

  final Input$FollowSortOption _instance;

  final TRes Function(Input$FollowSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$FollowSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null) 'on': ($on as Enum$FollowSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$FollowSortOption<TRes>
    implements CopyWith$Input$FollowSortOption<TRes> {
  _CopyWithStubImpl$Input$FollowSortOption(this._res);

  TRes _res;

  call({
    Enum$FollowSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$GenericDeleteInput {
  factory Input$GenericDeleteInput({required String id}) =>
      Input$GenericDeleteInput._({
        r'id': id,
      });

  Input$GenericDeleteInput._(this._$data);

  factory Input$GenericDeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$GenericDeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$GenericDeleteInput<Input$GenericDeleteInput> get copyWith =>
      CopyWith$Input$GenericDeleteInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GenericDeleteInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$GenericDeleteInput<TRes> {
  factory CopyWith$Input$GenericDeleteInput(
    Input$GenericDeleteInput instance,
    TRes Function(Input$GenericDeleteInput) then,
  ) = _CopyWithImpl$Input$GenericDeleteInput;

  factory CopyWith$Input$GenericDeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GenericDeleteInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$GenericDeleteInput<TRes>
    implements CopyWith$Input$GenericDeleteInput<TRes> {
  _CopyWithImpl$Input$GenericDeleteInput(
    this._instance,
    this._then,
  );

  final Input$GenericDeleteInput _instance;

  final TRes Function(Input$GenericDeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input$GenericDeleteInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Input$GenericDeleteInput<TRes>
    implements CopyWith$Input$GenericDeleteInput<TRes> {
  _CopyWithStubImpl$Input$GenericDeleteInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$InstallmentSortOption {
  factory Input$InstallmentSortOption({
    required Enum$InstallmentSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$InstallmentSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$InstallmentSortOption._(this._$data);

  factory Input$InstallmentSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$InstallmentSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$InstallmentSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$InstallmentSortEnum get $on =>
      (_$data['on'] as Enum$InstallmentSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$InstallmentSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$InstallmentSortOption<Input$InstallmentSortOption>
  get copyWith => CopyWith$Input$InstallmentSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InstallmentSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$InstallmentSortOption<TRes> {
  factory CopyWith$Input$InstallmentSortOption(
    Input$InstallmentSortOption instance,
    TRes Function(Input$InstallmentSortOption) then,
  ) = _CopyWithImpl$Input$InstallmentSortOption;

  factory CopyWith$Input$InstallmentSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$InstallmentSortOption;

  TRes call({
    Enum$InstallmentSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$InstallmentSortOption<TRes>
    implements CopyWith$Input$InstallmentSortOption<TRes> {
  _CopyWithImpl$Input$InstallmentSortOption(
    this._instance,
    this._then,
  );

  final Input$InstallmentSortOption _instance;

  final TRes Function(Input$InstallmentSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$InstallmentSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$InstallmentSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$InstallmentSortOption<TRes>
    implements CopyWith$Input$InstallmentSortOption<TRes> {
  _CopyWithStubImpl$Input$InstallmentSortOption(this._res);

  TRes _res;

  call({
    Enum$InstallmentSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$LibraryEntryCreateInput {
  factory Input$LibraryEntryCreateInput({
    required String mediaId,
    required Enum$MediaTypeEnum mediaType,
    required Enum$LibraryEntryStatusEnum status,
    int? progress,
    bool? private,
    String? notes,
    int? reconsumeCount,
    bool? reconsuming,
    int? volumesOwned,
    int? rating,
    String? startedAt,
    String? finishedAt,
  }) => Input$LibraryEntryCreateInput._({
    r'mediaId': mediaId,
    r'mediaType': mediaType,
    r'status': status,
    if (progress != null) r'progress': progress,
    if (private != null) r'private': private,
    if (notes != null) r'notes': notes,
    if (reconsumeCount != null) r'reconsumeCount': reconsumeCount,
    if (reconsuming != null) r'reconsuming': reconsuming,
    if (volumesOwned != null) r'volumesOwned': volumesOwned,
    if (rating != null) r'rating': rating,
    if (startedAt != null) r'startedAt': startedAt,
    if (finishedAt != null) r'finishedAt': finishedAt,
  });

  Input$LibraryEntryCreateInput._(this._$data);

  factory Input$LibraryEntryCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaId = data['mediaId'];
    result$data['mediaId'] = (l$mediaId as String);
    final l$mediaType = data['mediaType'];
    result$data['mediaType'] = fromJson$Enum$MediaTypeEnum(
      (l$mediaType as String),
    );
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$LibraryEntryStatusEnum(
      (l$status as String),
    );
    if (data.containsKey('progress')) {
      final l$progress = data['progress'];
      result$data['progress'] = (l$progress as int?);
    }
    if (data.containsKey('private')) {
      final l$private = data['private'];
      result$data['private'] = (l$private as bool?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('reconsumeCount')) {
      final l$reconsumeCount = data['reconsumeCount'];
      result$data['reconsumeCount'] = (l$reconsumeCount as int?);
    }
    if (data.containsKey('reconsuming')) {
      final l$reconsuming = data['reconsuming'];
      result$data['reconsuming'] = (l$reconsuming as bool?);
    }
    if (data.containsKey('volumesOwned')) {
      final l$volumesOwned = data['volumesOwned'];
      result$data['volumesOwned'] = (l$volumesOwned as int?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = (l$rating as int?);
    }
    if (data.containsKey('startedAt')) {
      final l$startedAt = data['startedAt'];
      result$data['startedAt'] = (l$startedAt as String?);
    }
    if (data.containsKey('finishedAt')) {
      final l$finishedAt = data['finishedAt'];
      result$data['finishedAt'] = (l$finishedAt as String?);
    }
    return Input$LibraryEntryCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaId => (_$data['mediaId'] as String);

  Enum$MediaTypeEnum get mediaType =>
      (_$data['mediaType'] as Enum$MediaTypeEnum);

  Enum$LibraryEntryStatusEnum get status =>
      (_$data['status'] as Enum$LibraryEntryStatusEnum);

  int? get progress => (_$data['progress'] as int?);

  bool? get private => (_$data['private'] as bool?);

  String? get notes => (_$data['notes'] as String?);

  int? get reconsumeCount => (_$data['reconsumeCount'] as int?);

  bool? get reconsuming => (_$data['reconsuming'] as bool?);

  int? get volumesOwned => (_$data['volumesOwned'] as int?);

  int? get rating => (_$data['rating'] as int?);

  String? get startedAt => (_$data['startedAt'] as String?);

  String? get finishedAt => (_$data['finishedAt'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaId = mediaId;
    result$data['mediaId'] = l$mediaId;
    final l$mediaType = mediaType;
    result$data['mediaType'] = toJson$Enum$MediaTypeEnum(l$mediaType);
    final l$status = status;
    result$data['status'] = toJson$Enum$LibraryEntryStatusEnum(l$status);
    if (_$data.containsKey('progress')) {
      final l$progress = progress;
      result$data['progress'] = l$progress;
    }
    if (_$data.containsKey('private')) {
      final l$private = private;
      result$data['private'] = l$private;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('reconsumeCount')) {
      final l$reconsumeCount = reconsumeCount;
      result$data['reconsumeCount'] = l$reconsumeCount;
    }
    if (_$data.containsKey('reconsuming')) {
      final l$reconsuming = reconsuming;
      result$data['reconsuming'] = l$reconsuming;
    }
    if (_$data.containsKey('volumesOwned')) {
      final l$volumesOwned = volumesOwned;
      result$data['volumesOwned'] = l$volumesOwned;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] = l$rating;
    }
    if (_$data.containsKey('startedAt')) {
      final l$startedAt = startedAt;
      result$data['startedAt'] = l$startedAt;
    }
    if (_$data.containsKey('finishedAt')) {
      final l$finishedAt = finishedAt;
      result$data['finishedAt'] = l$finishedAt;
    }
    return result$data;
  }

  CopyWith$Input$LibraryEntryCreateInput<Input$LibraryEntryCreateInput>
  get copyWith => CopyWith$Input$LibraryEntryCreateInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (_$data.containsKey('progress') !=
        other._$data.containsKey('progress')) {
      return false;
    }
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (_$data.containsKey('private') != other._$data.containsKey('private')) {
      return false;
    }
    if (l$private != lOther$private) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$reconsumeCount = reconsumeCount;
    final lOther$reconsumeCount = other.reconsumeCount;
    if (_$data.containsKey('reconsumeCount') !=
        other._$data.containsKey('reconsumeCount')) {
      return false;
    }
    if (l$reconsumeCount != lOther$reconsumeCount) {
      return false;
    }
    final l$reconsuming = reconsuming;
    final lOther$reconsuming = other.reconsuming;
    if (_$data.containsKey('reconsuming') !=
        other._$data.containsKey('reconsuming')) {
      return false;
    }
    if (l$reconsuming != lOther$reconsuming) {
      return false;
    }
    final l$volumesOwned = volumesOwned;
    final lOther$volumesOwned = other.volumesOwned;
    if (_$data.containsKey('volumesOwned') !=
        other._$data.containsKey('volumesOwned')) {
      return false;
    }
    if (l$volumesOwned != lOther$volumesOwned) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (_$data.containsKey('startedAt') !=
        other._$data.containsKey('startedAt')) {
      return false;
    }
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$finishedAt = finishedAt;
    final lOther$finishedAt = other.finishedAt;
    if (_$data.containsKey('finishedAt') !=
        other._$data.containsKey('finishedAt')) {
      return false;
    }
    if (l$finishedAt != lOther$finishedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
    final l$status = status;
    final l$progress = progress;
    final l$private = private;
    final l$notes = notes;
    final l$reconsumeCount = reconsumeCount;
    final l$reconsuming = reconsuming;
    final l$volumesOwned = volumesOwned;
    final l$rating = rating;
    final l$startedAt = startedAt;
    final l$finishedAt = finishedAt;
    return Object.hashAll([
      l$mediaId,
      l$mediaType,
      l$status,
      _$data.containsKey('progress') ? l$progress : const {},
      _$data.containsKey('private') ? l$private : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('reconsumeCount') ? l$reconsumeCount : const {},
      _$data.containsKey('reconsuming') ? l$reconsuming : const {},
      _$data.containsKey('volumesOwned') ? l$volumesOwned : const {},
      _$data.containsKey('rating') ? l$rating : const {},
      _$data.containsKey('startedAt') ? l$startedAt : const {},
      _$data.containsKey('finishedAt') ? l$finishedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryCreateInput<TRes> {
  factory CopyWith$Input$LibraryEntryCreateInput(
    Input$LibraryEntryCreateInput instance,
    TRes Function(Input$LibraryEntryCreateInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryCreateInput;

  factory CopyWith$Input$LibraryEntryCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryCreateInput;

  TRes call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    Enum$LibraryEntryStatusEnum? status,
    int? progress,
    bool? private,
    String? notes,
    int? reconsumeCount,
    bool? reconsuming,
    int? volumesOwned,
    int? rating,
    String? startedAt,
    String? finishedAt,
  });
}

class _CopyWithImpl$Input$LibraryEntryCreateInput<TRes>
    implements CopyWith$Input$LibraryEntryCreateInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryCreateInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryCreateInput _instance;

  final TRes Function(Input$LibraryEntryCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? private = _undefined,
    Object? notes = _undefined,
    Object? reconsumeCount = _undefined,
    Object? reconsuming = _undefined,
    Object? volumesOwned = _undefined,
    Object? rating = _undefined,
    Object? startedAt = _undefined,
    Object? finishedAt = _undefined,
  }) => _then(
    Input$LibraryEntryCreateInput._({
      ..._instance._$data,
      if (mediaId != _undefined && mediaId != null)
        'mediaId': (mediaId as String),
      if (mediaType != _undefined && mediaType != null)
        'mediaType': (mediaType as Enum$MediaTypeEnum),
      if (status != _undefined && status != null)
        'status': (status as Enum$LibraryEntryStatusEnum),
      if (progress != _undefined) 'progress': (progress as int?),
      if (private != _undefined) 'private': (private as bool?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (reconsumeCount != _undefined)
        'reconsumeCount': (reconsumeCount as int?),
      if (reconsuming != _undefined) 'reconsuming': (reconsuming as bool?),
      if (volumesOwned != _undefined) 'volumesOwned': (volumesOwned as int?),
      if (rating != _undefined) 'rating': (rating as int?),
      if (startedAt != _undefined) 'startedAt': (startedAt as String?),
      if (finishedAt != _undefined) 'finishedAt': (finishedAt as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryCreateInput<TRes>
    implements CopyWith$Input$LibraryEntryCreateInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryCreateInput(this._res);

  TRes _res;

  call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    Enum$LibraryEntryStatusEnum? status,
    int? progress,
    bool? private,
    String? notes,
    int? reconsumeCount,
    bool? reconsuming,
    int? volumesOwned,
    int? rating,
    String? startedAt,
    String? finishedAt,
  }) => _res;
}

class Input$LibraryEntrySortOption {
  factory Input$LibraryEntrySortOption({
    required Enum$LibraryEntrySortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$LibraryEntrySortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$LibraryEntrySortOption._(this._$data);

  factory Input$LibraryEntrySortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$LibraryEntrySortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$LibraryEntrySortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$LibraryEntrySortEnum get $on =>
      (_$data['on'] as Enum$LibraryEntrySortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$LibraryEntrySortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$LibraryEntrySortOption<Input$LibraryEntrySortOption>
  get copyWith => CopyWith$Input$LibraryEntrySortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntrySortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntrySortOption<TRes> {
  factory CopyWith$Input$LibraryEntrySortOption(
    Input$LibraryEntrySortOption instance,
    TRes Function(Input$LibraryEntrySortOption) then,
  ) = _CopyWithImpl$Input$LibraryEntrySortOption;

  factory CopyWith$Input$LibraryEntrySortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntrySortOption;

  TRes call({
    Enum$LibraryEntrySortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$LibraryEntrySortOption<TRes>
    implements CopyWith$Input$LibraryEntrySortOption<TRes> {
  _CopyWithImpl$Input$LibraryEntrySortOption(
    this._instance,
    this._then,
  );

  final Input$LibraryEntrySortOption _instance;

  final TRes Function(Input$LibraryEntrySortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$LibraryEntrySortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$LibraryEntrySortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntrySortOption<TRes>
    implements CopyWith$Input$LibraryEntrySortOption<TRes> {
  _CopyWithStubImpl$Input$LibraryEntrySortOption(this._res);

  TRes _res;

  call({
    Enum$LibraryEntrySortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$LibraryEntryUpdateInput {
  factory Input$LibraryEntryUpdateInput({
    required String id,
    Enum$LibraryEntryStatusEnum? status,
    int? progress,
    bool? private,
    String? notes,
    int? reconsumeCount,
    bool? reconsuming,
    int? volumesOwned,
    int? rating,
    String? startedAt,
    String? finishedAt,
  }) => Input$LibraryEntryUpdateInput._({
    r'id': id,
    if (status != null) r'status': status,
    if (progress != null) r'progress': progress,
    if (private != null) r'private': private,
    if (notes != null) r'notes': notes,
    if (reconsumeCount != null) r'reconsumeCount': reconsumeCount,
    if (reconsuming != null) r'reconsuming': reconsuming,
    if (volumesOwned != null) r'volumesOwned': volumesOwned,
    if (rating != null) r'rating': rating,
    if (startedAt != null) r'startedAt': startedAt,
    if (finishedAt != null) r'finishedAt': finishedAt,
  });

  Input$LibraryEntryUpdateInput._(this._$data);

  factory Input$LibraryEntryUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$LibraryEntryStatusEnum((l$status as String));
    }
    if (data.containsKey('progress')) {
      final l$progress = data['progress'];
      result$data['progress'] = (l$progress as int?);
    }
    if (data.containsKey('private')) {
      final l$private = data['private'];
      result$data['private'] = (l$private as bool?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('reconsumeCount')) {
      final l$reconsumeCount = data['reconsumeCount'];
      result$data['reconsumeCount'] = (l$reconsumeCount as int?);
    }
    if (data.containsKey('reconsuming')) {
      final l$reconsuming = data['reconsuming'];
      result$data['reconsuming'] = (l$reconsuming as bool?);
    }
    if (data.containsKey('volumesOwned')) {
      final l$volumesOwned = data['volumesOwned'];
      result$data['volumesOwned'] = (l$volumesOwned as int?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = (l$rating as int?);
    }
    if (data.containsKey('startedAt')) {
      final l$startedAt = data['startedAt'];
      result$data['startedAt'] = (l$startedAt as String?);
    }
    if (data.containsKey('finishedAt')) {
      final l$finishedAt = data['finishedAt'];
      result$data['finishedAt'] = (l$finishedAt as String?);
    }
    return Input$LibraryEntryUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Enum$LibraryEntryStatusEnum? get status =>
      (_$data['status'] as Enum$LibraryEntryStatusEnum?);

  int? get progress => (_$data['progress'] as int?);

  bool? get private => (_$data['private'] as bool?);

  String? get notes => (_$data['notes'] as String?);

  int? get reconsumeCount => (_$data['reconsumeCount'] as int?);

  bool? get reconsuming => (_$data['reconsuming'] as bool?);

  int? get volumesOwned => (_$data['volumesOwned'] as int?);

  int? get rating => (_$data['rating'] as int?);

  String? get startedAt => (_$data['startedAt'] as String?);

  String? get finishedAt => (_$data['finishedAt'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status == null
          ? null
          : toJson$Enum$LibraryEntryStatusEnum(l$status);
    }
    if (_$data.containsKey('progress')) {
      final l$progress = progress;
      result$data['progress'] = l$progress;
    }
    if (_$data.containsKey('private')) {
      final l$private = private;
      result$data['private'] = l$private;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('reconsumeCount')) {
      final l$reconsumeCount = reconsumeCount;
      result$data['reconsumeCount'] = l$reconsumeCount;
    }
    if (_$data.containsKey('reconsuming')) {
      final l$reconsuming = reconsuming;
      result$data['reconsuming'] = l$reconsuming;
    }
    if (_$data.containsKey('volumesOwned')) {
      final l$volumesOwned = volumesOwned;
      result$data['volumesOwned'] = l$volumesOwned;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] = l$rating;
    }
    if (_$data.containsKey('startedAt')) {
      final l$startedAt = startedAt;
      result$data['startedAt'] = l$startedAt;
    }
    if (_$data.containsKey('finishedAt')) {
      final l$finishedAt = finishedAt;
      result$data['finishedAt'] = l$finishedAt;
    }
    return result$data;
  }

  CopyWith$Input$LibraryEntryUpdateInput<Input$LibraryEntryUpdateInput>
  get copyWith => CopyWith$Input$LibraryEntryUpdateInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (_$data.containsKey('progress') !=
        other._$data.containsKey('progress')) {
      return false;
    }
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (_$data.containsKey('private') != other._$data.containsKey('private')) {
      return false;
    }
    if (l$private != lOther$private) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$reconsumeCount = reconsumeCount;
    final lOther$reconsumeCount = other.reconsumeCount;
    if (_$data.containsKey('reconsumeCount') !=
        other._$data.containsKey('reconsumeCount')) {
      return false;
    }
    if (l$reconsumeCount != lOther$reconsumeCount) {
      return false;
    }
    final l$reconsuming = reconsuming;
    final lOther$reconsuming = other.reconsuming;
    if (_$data.containsKey('reconsuming') !=
        other._$data.containsKey('reconsuming')) {
      return false;
    }
    if (l$reconsuming != lOther$reconsuming) {
      return false;
    }
    final l$volumesOwned = volumesOwned;
    final lOther$volumesOwned = other.volumesOwned;
    if (_$data.containsKey('volumesOwned') !=
        other._$data.containsKey('volumesOwned')) {
      return false;
    }
    if (l$volumesOwned != lOther$volumesOwned) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (_$data.containsKey('startedAt') !=
        other._$data.containsKey('startedAt')) {
      return false;
    }
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$finishedAt = finishedAt;
    final lOther$finishedAt = other.finishedAt;
    if (_$data.containsKey('finishedAt') !=
        other._$data.containsKey('finishedAt')) {
      return false;
    }
    if (l$finishedAt != lOther$finishedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$progress = progress;
    final l$private = private;
    final l$notes = notes;
    final l$reconsumeCount = reconsumeCount;
    final l$reconsuming = reconsuming;
    final l$volumesOwned = volumesOwned;
    final l$rating = rating;
    final l$startedAt = startedAt;
    final l$finishedAt = finishedAt;
    return Object.hashAll([
      l$id,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('progress') ? l$progress : const {},
      _$data.containsKey('private') ? l$private : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('reconsumeCount') ? l$reconsumeCount : const {},
      _$data.containsKey('reconsuming') ? l$reconsuming : const {},
      _$data.containsKey('volumesOwned') ? l$volumesOwned : const {},
      _$data.containsKey('rating') ? l$rating : const {},
      _$data.containsKey('startedAt') ? l$startedAt : const {},
      _$data.containsKey('finishedAt') ? l$finishedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryUpdateInput<TRes> {
  factory CopyWith$Input$LibraryEntryUpdateInput(
    Input$LibraryEntryUpdateInput instance,
    TRes Function(Input$LibraryEntryUpdateInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryUpdateInput;

  factory CopyWith$Input$LibraryEntryUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryUpdateInput;

  TRes call({
    String? id,
    Enum$LibraryEntryStatusEnum? status,
    int? progress,
    bool? private,
    String? notes,
    int? reconsumeCount,
    bool? reconsuming,
    int? volumesOwned,
    int? rating,
    String? startedAt,
    String? finishedAt,
  });
}

class _CopyWithImpl$Input$LibraryEntryUpdateInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryUpdateInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryUpdateInput _instance;

  final TRes Function(Input$LibraryEntryUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? private = _undefined,
    Object? notes = _undefined,
    Object? reconsumeCount = _undefined,
    Object? reconsuming = _undefined,
    Object? volumesOwned = _undefined,
    Object? rating = _undefined,
    Object? startedAt = _undefined,
    Object? finishedAt = _undefined,
  }) => _then(
    Input$LibraryEntryUpdateInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (status != _undefined)
        'status': (status as Enum$LibraryEntryStatusEnum?),
      if (progress != _undefined) 'progress': (progress as int?),
      if (private != _undefined) 'private': (private as bool?),
      if (notes != _undefined) 'notes': (notes as String?),
      if (reconsumeCount != _undefined)
        'reconsumeCount': (reconsumeCount as int?),
      if (reconsuming != _undefined) 'reconsuming': (reconsuming as bool?),
      if (volumesOwned != _undefined) 'volumesOwned': (volumesOwned as int?),
      if (rating != _undefined) 'rating': (rating as int?),
      if (startedAt != _undefined) 'startedAt': (startedAt as String?),
      if (finishedAt != _undefined) 'finishedAt': (finishedAt as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryUpdateInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryUpdateInput(this._res);

  TRes _res;

  call({
    String? id,
    Enum$LibraryEntryStatusEnum? status,
    int? progress,
    bool? private,
    String? notes,
    int? reconsumeCount,
    bool? reconsuming,
    int? volumesOwned,
    int? rating,
    String? startedAt,
    String? finishedAt,
  }) => _res;
}

class Input$LibraryEntryUpdateProgressByIdInput {
  factory Input$LibraryEntryUpdateProgressByIdInput({
    required String id,
    required int progress,
  }) => Input$LibraryEntryUpdateProgressByIdInput._({
    r'id': id,
    r'progress': progress,
  });

  Input$LibraryEntryUpdateProgressByIdInput._(this._$data);

  factory Input$LibraryEntryUpdateProgressByIdInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$progress = data['progress'];
    result$data['progress'] = (l$progress as int);
    return Input$LibraryEntryUpdateProgressByIdInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  int get progress => (_$data['progress'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$progress = progress;
    result$data['progress'] = l$progress;
    return result$data;
  }

  CopyWith$Input$LibraryEntryUpdateProgressByIdInput<
    Input$LibraryEntryUpdateProgressByIdInput
  >
  get copyWith => CopyWith$Input$LibraryEntryUpdateProgressByIdInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryUpdateProgressByIdInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$progress = progress;
    return Object.hashAll([
      l$id,
      l$progress,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryUpdateProgressByIdInput<TRes> {
  factory CopyWith$Input$LibraryEntryUpdateProgressByIdInput(
    Input$LibraryEntryUpdateProgressByIdInput instance,
    TRes Function(Input$LibraryEntryUpdateProgressByIdInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryUpdateProgressByIdInput;

  factory CopyWith$Input$LibraryEntryUpdateProgressByIdInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryUpdateProgressByIdInput;

  TRes call({
    String? id,
    int? progress,
  });
}

class _CopyWithImpl$Input$LibraryEntryUpdateProgressByIdInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateProgressByIdInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryUpdateProgressByIdInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryUpdateProgressByIdInput _instance;

  final TRes Function(Input$LibraryEntryUpdateProgressByIdInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
  }) => _then(
    Input$LibraryEntryUpdateProgressByIdInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (progress != _undefined && progress != null)
        'progress': (progress as int),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryUpdateProgressByIdInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateProgressByIdInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryUpdateProgressByIdInput(this._res);

  TRes _res;

  call({
    String? id,
    int? progress,
  }) => _res;
}

class Input$LibraryEntryUpdateProgressByMediaInput {
  factory Input$LibraryEntryUpdateProgressByMediaInput({
    required String mediaId,
    required Enum$MediaTypeEnum mediaType,
    required int progress,
  }) => Input$LibraryEntryUpdateProgressByMediaInput._({
    r'mediaId': mediaId,
    r'mediaType': mediaType,
    r'progress': progress,
  });

  Input$LibraryEntryUpdateProgressByMediaInput._(this._$data);

  factory Input$LibraryEntryUpdateProgressByMediaInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mediaId = data['mediaId'];
    result$data['mediaId'] = (l$mediaId as String);
    final l$mediaType = data['mediaType'];
    result$data['mediaType'] = fromJson$Enum$MediaTypeEnum(
      (l$mediaType as String),
    );
    final l$progress = data['progress'];
    result$data['progress'] = (l$progress as int);
    return Input$LibraryEntryUpdateProgressByMediaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaId => (_$data['mediaId'] as String);

  Enum$MediaTypeEnum get mediaType =>
      (_$data['mediaType'] as Enum$MediaTypeEnum);

  int get progress => (_$data['progress'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaId = mediaId;
    result$data['mediaId'] = l$mediaId;
    final l$mediaType = mediaType;
    result$data['mediaType'] = toJson$Enum$MediaTypeEnum(l$mediaType);
    final l$progress = progress;
    result$data['progress'] = l$progress;
    return result$data;
  }

  CopyWith$Input$LibraryEntryUpdateProgressByMediaInput<
    Input$LibraryEntryUpdateProgressByMediaInput
  >
  get copyWith => CopyWith$Input$LibraryEntryUpdateProgressByMediaInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryUpdateProgressByMediaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
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
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
    final l$progress = progress;
    return Object.hashAll([
      l$mediaId,
      l$mediaType,
      l$progress,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryUpdateProgressByMediaInput<TRes> {
  factory CopyWith$Input$LibraryEntryUpdateProgressByMediaInput(
    Input$LibraryEntryUpdateProgressByMediaInput instance,
    TRes Function(Input$LibraryEntryUpdateProgressByMediaInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryUpdateProgressByMediaInput;

  factory CopyWith$Input$LibraryEntryUpdateProgressByMediaInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryUpdateProgressByMediaInput;

  TRes call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    int? progress,
  });
}

class _CopyWithImpl$Input$LibraryEntryUpdateProgressByMediaInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateProgressByMediaInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryUpdateProgressByMediaInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryUpdateProgressByMediaInput _instance;

  final TRes Function(Input$LibraryEntryUpdateProgressByMediaInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? progress = _undefined,
  }) => _then(
    Input$LibraryEntryUpdateProgressByMediaInput._({
      ..._instance._$data,
      if (mediaId != _undefined && mediaId != null)
        'mediaId': (mediaId as String),
      if (mediaType != _undefined && mediaType != null)
        'mediaType': (mediaType as Enum$MediaTypeEnum),
      if (progress != _undefined && progress != null)
        'progress': (progress as int),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryUpdateProgressByMediaInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateProgressByMediaInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryUpdateProgressByMediaInput(this._res);

  TRes _res;

  call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    int? progress,
  }) => _res;
}

class Input$LibraryEntryUpdateRatingByIdInput {
  factory Input$LibraryEntryUpdateRatingByIdInput({
    required String id,
    required int rating,
  }) => Input$LibraryEntryUpdateRatingByIdInput._({
    r'id': id,
    r'rating': rating,
  });

  Input$LibraryEntryUpdateRatingByIdInput._(this._$data);

  factory Input$LibraryEntryUpdateRatingByIdInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$rating = data['rating'];
    result$data['rating'] = (l$rating as int);
    return Input$LibraryEntryUpdateRatingByIdInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  int get rating => (_$data['rating'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$rating = rating;
    result$data['rating'] = l$rating;
    return result$data;
  }

  CopyWith$Input$LibraryEntryUpdateRatingByIdInput<
    Input$LibraryEntryUpdateRatingByIdInput
  >
  get copyWith => CopyWith$Input$LibraryEntryUpdateRatingByIdInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryUpdateRatingByIdInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    return Object.hashAll([
      l$id,
      l$rating,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryUpdateRatingByIdInput<TRes> {
  factory CopyWith$Input$LibraryEntryUpdateRatingByIdInput(
    Input$LibraryEntryUpdateRatingByIdInput instance,
    TRes Function(Input$LibraryEntryUpdateRatingByIdInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryUpdateRatingByIdInput;

  factory CopyWith$Input$LibraryEntryUpdateRatingByIdInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryUpdateRatingByIdInput;

  TRes call({
    String? id,
    int? rating,
  });
}

class _CopyWithImpl$Input$LibraryEntryUpdateRatingByIdInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateRatingByIdInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryUpdateRatingByIdInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryUpdateRatingByIdInput _instance;

  final TRes Function(Input$LibraryEntryUpdateRatingByIdInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
  }) => _then(
    Input$LibraryEntryUpdateRatingByIdInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (rating != _undefined && rating != null) 'rating': (rating as int),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryUpdateRatingByIdInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateRatingByIdInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryUpdateRatingByIdInput(this._res);

  TRes _res;

  call({
    String? id,
    int? rating,
  }) => _res;
}

class Input$LibraryEntryUpdateRatingByMediaInput {
  factory Input$LibraryEntryUpdateRatingByMediaInput({
    required String mediaId,
    required Enum$MediaTypeEnum mediaType,
    required int rating,
  }) => Input$LibraryEntryUpdateRatingByMediaInput._({
    r'mediaId': mediaId,
    r'mediaType': mediaType,
    r'rating': rating,
  });

  Input$LibraryEntryUpdateRatingByMediaInput._(this._$data);

  factory Input$LibraryEntryUpdateRatingByMediaInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mediaId = data['mediaId'];
    result$data['mediaId'] = (l$mediaId as String);
    final l$mediaType = data['mediaType'];
    result$data['mediaType'] = fromJson$Enum$MediaTypeEnum(
      (l$mediaType as String),
    );
    final l$rating = data['rating'];
    result$data['rating'] = (l$rating as int);
    return Input$LibraryEntryUpdateRatingByMediaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaId => (_$data['mediaId'] as String);

  Enum$MediaTypeEnum get mediaType =>
      (_$data['mediaType'] as Enum$MediaTypeEnum);

  int get rating => (_$data['rating'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaId = mediaId;
    result$data['mediaId'] = l$mediaId;
    final l$mediaType = mediaType;
    result$data['mediaType'] = toJson$Enum$MediaTypeEnum(l$mediaType);
    final l$rating = rating;
    result$data['rating'] = l$rating;
    return result$data;
  }

  CopyWith$Input$LibraryEntryUpdateRatingByMediaInput<
    Input$LibraryEntryUpdateRatingByMediaInput
  >
  get copyWith => CopyWith$Input$LibraryEntryUpdateRatingByMediaInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryUpdateRatingByMediaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
    final l$rating = rating;
    return Object.hashAll([
      l$mediaId,
      l$mediaType,
      l$rating,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryUpdateRatingByMediaInput<TRes> {
  factory CopyWith$Input$LibraryEntryUpdateRatingByMediaInput(
    Input$LibraryEntryUpdateRatingByMediaInput instance,
    TRes Function(Input$LibraryEntryUpdateRatingByMediaInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryUpdateRatingByMediaInput;

  factory CopyWith$Input$LibraryEntryUpdateRatingByMediaInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryUpdateRatingByMediaInput;

  TRes call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    int? rating,
  });
}

class _CopyWithImpl$Input$LibraryEntryUpdateRatingByMediaInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateRatingByMediaInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryUpdateRatingByMediaInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryUpdateRatingByMediaInput _instance;

  final TRes Function(Input$LibraryEntryUpdateRatingByMediaInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? rating = _undefined,
  }) => _then(
    Input$LibraryEntryUpdateRatingByMediaInput._({
      ..._instance._$data,
      if (mediaId != _undefined && mediaId != null)
        'mediaId': (mediaId as String),
      if (mediaType != _undefined && mediaType != null)
        'mediaType': (mediaType as Enum$MediaTypeEnum),
      if (rating != _undefined && rating != null) 'rating': (rating as int),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryUpdateRatingByMediaInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateRatingByMediaInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryUpdateRatingByMediaInput(this._res);

  TRes _res;

  call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    int? rating,
  }) => _res;
}

class Input$LibraryEntryUpdateStatusByIdInput {
  factory Input$LibraryEntryUpdateStatusByIdInput({
    required String id,
    required Enum$LibraryEntryStatusEnum status,
  }) => Input$LibraryEntryUpdateStatusByIdInput._({
    r'id': id,
    r'status': status,
  });

  Input$LibraryEntryUpdateStatusByIdInput._(this._$data);

  factory Input$LibraryEntryUpdateStatusByIdInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$LibraryEntryStatusEnum(
      (l$status as String),
    );
    return Input$LibraryEntryUpdateStatusByIdInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Enum$LibraryEntryStatusEnum get status =>
      (_$data['status'] as Enum$LibraryEntryStatusEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$status = status;
    result$data['status'] = toJson$Enum$LibraryEntryStatusEnum(l$status);
    return result$data;
  }

  CopyWith$Input$LibraryEntryUpdateStatusByIdInput<
    Input$LibraryEntryUpdateStatusByIdInput
  >
  get copyWith => CopyWith$Input$LibraryEntryUpdateStatusByIdInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryUpdateStatusByIdInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    return Object.hashAll([
      l$id,
      l$status,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryUpdateStatusByIdInput<TRes> {
  factory CopyWith$Input$LibraryEntryUpdateStatusByIdInput(
    Input$LibraryEntryUpdateStatusByIdInput instance,
    TRes Function(Input$LibraryEntryUpdateStatusByIdInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryUpdateStatusByIdInput;

  factory CopyWith$Input$LibraryEntryUpdateStatusByIdInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryUpdateStatusByIdInput;

  TRes call({
    String? id,
    Enum$LibraryEntryStatusEnum? status,
  });
}

class _CopyWithImpl$Input$LibraryEntryUpdateStatusByIdInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateStatusByIdInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryUpdateStatusByIdInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryUpdateStatusByIdInput _instance;

  final TRes Function(Input$LibraryEntryUpdateStatusByIdInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
  }) => _then(
    Input$LibraryEntryUpdateStatusByIdInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (status != _undefined && status != null)
        'status': (status as Enum$LibraryEntryStatusEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryUpdateStatusByIdInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateStatusByIdInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryUpdateStatusByIdInput(this._res);

  TRes _res;

  call({
    String? id,
    Enum$LibraryEntryStatusEnum? status,
  }) => _res;
}

class Input$LibraryEntryUpdateStatusByMediaInput {
  factory Input$LibraryEntryUpdateStatusByMediaInput({
    required String mediaId,
    required Enum$MediaTypeEnum mediaType,
    required Enum$LibraryEntryStatusEnum status,
  }) => Input$LibraryEntryUpdateStatusByMediaInput._({
    r'mediaId': mediaId,
    r'mediaType': mediaType,
    r'status': status,
  });

  Input$LibraryEntryUpdateStatusByMediaInput._(this._$data);

  factory Input$LibraryEntryUpdateStatusByMediaInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mediaId = data['mediaId'];
    result$data['mediaId'] = (l$mediaId as String);
    final l$mediaType = data['mediaType'];
    result$data['mediaType'] = fromJson$Enum$MediaTypeEnum(
      (l$mediaType as String),
    );
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$LibraryEntryStatusEnum(
      (l$status as String),
    );
    return Input$LibraryEntryUpdateStatusByMediaInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaId => (_$data['mediaId'] as String);

  Enum$MediaTypeEnum get mediaType =>
      (_$data['mediaType'] as Enum$MediaTypeEnum);

  Enum$LibraryEntryStatusEnum get status =>
      (_$data['status'] as Enum$LibraryEntryStatusEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaId = mediaId;
    result$data['mediaId'] = l$mediaId;
    final l$mediaType = mediaType;
    result$data['mediaType'] = toJson$Enum$MediaTypeEnum(l$mediaType);
    final l$status = status;
    result$data['status'] = toJson$Enum$LibraryEntryStatusEnum(l$status);
    return result$data;
  }

  CopyWith$Input$LibraryEntryUpdateStatusByMediaInput<
    Input$LibraryEntryUpdateStatusByMediaInput
  >
  get copyWith => CopyWith$Input$LibraryEntryUpdateStatusByMediaInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEntryUpdateStatusByMediaInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
    final l$status = status;
    return Object.hashAll([
      l$mediaId,
      l$mediaType,
      l$status,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEntryUpdateStatusByMediaInput<TRes> {
  factory CopyWith$Input$LibraryEntryUpdateStatusByMediaInput(
    Input$LibraryEntryUpdateStatusByMediaInput instance,
    TRes Function(Input$LibraryEntryUpdateStatusByMediaInput) then,
  ) = _CopyWithImpl$Input$LibraryEntryUpdateStatusByMediaInput;

  factory CopyWith$Input$LibraryEntryUpdateStatusByMediaInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEntryUpdateStatusByMediaInput;

  TRes call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    Enum$LibraryEntryStatusEnum? status,
  });
}

class _CopyWithImpl$Input$LibraryEntryUpdateStatusByMediaInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateStatusByMediaInput<TRes> {
  _CopyWithImpl$Input$LibraryEntryUpdateStatusByMediaInput(
    this._instance,
    this._then,
  );

  final Input$LibraryEntryUpdateStatusByMediaInput _instance;

  final TRes Function(Input$LibraryEntryUpdateStatusByMediaInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? status = _undefined,
  }) => _then(
    Input$LibraryEntryUpdateStatusByMediaInput._({
      ..._instance._$data,
      if (mediaId != _undefined && mediaId != null)
        'mediaId': (mediaId as String),
      if (mediaType != _undefined && mediaType != null)
        'mediaType': (mediaType as Enum$MediaTypeEnum),
      if (status != _undefined && status != null)
        'status': (status as Enum$LibraryEntryStatusEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEntryUpdateStatusByMediaInput<TRes>
    implements CopyWith$Input$LibraryEntryUpdateStatusByMediaInput<TRes> {
  _CopyWithStubImpl$Input$LibraryEntryUpdateStatusByMediaInput(this._res);

  TRes _res;

  call({
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    Enum$LibraryEntryStatusEnum? status,
  }) => _res;
}

class Input$LibraryEventSortOption {
  factory Input$LibraryEventSortOption({
    required Enum$LibraryEventSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$LibraryEventSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$LibraryEventSortOption._(this._$data);

  factory Input$LibraryEventSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$LibraryEventSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$LibraryEventSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$LibraryEventSortEnum get $on =>
      (_$data['on'] as Enum$LibraryEventSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$LibraryEventSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$LibraryEventSortOption<Input$LibraryEventSortOption>
  get copyWith => CopyWith$Input$LibraryEventSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LibraryEventSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$LibraryEventSortOption<TRes> {
  factory CopyWith$Input$LibraryEventSortOption(
    Input$LibraryEventSortOption instance,
    TRes Function(Input$LibraryEventSortOption) then,
  ) = _CopyWithImpl$Input$LibraryEventSortOption;

  factory CopyWith$Input$LibraryEventSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$LibraryEventSortOption;

  TRes call({
    Enum$LibraryEventSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$LibraryEventSortOption<TRes>
    implements CopyWith$Input$LibraryEventSortOption<TRes> {
  _CopyWithImpl$Input$LibraryEventSortOption(
    this._instance,
    this._then,
  );

  final Input$LibraryEventSortOption _instance;

  final TRes Function(Input$LibraryEventSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$LibraryEventSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$LibraryEventSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$LibraryEventSortOption<TRes>
    implements CopyWith$Input$LibraryEventSortOption<TRes> {
  _CopyWithStubImpl$Input$LibraryEventSortOption(this._res);

  TRes _res;

  call({
    Enum$LibraryEventSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$MappingCreateInput {
  factory Input$MappingCreateInput({
    required Enum$MappingExternalSiteEnum externalSite,
    required String externalId,
    required String itemId,
    required Enum$MappingItemEnum itemType,
  }) => Input$MappingCreateInput._({
    r'externalSite': externalSite,
    r'externalId': externalId,
    r'itemId': itemId,
    r'itemType': itemType,
  });

  Input$MappingCreateInput._(this._$data);

  factory Input$MappingCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$externalSite = data['externalSite'];
    result$data['externalSite'] = fromJson$Enum$MappingExternalSiteEnum(
      (l$externalSite as String),
    );
    final l$externalId = data['externalId'];
    result$data['externalId'] = (l$externalId as String);
    final l$itemId = data['itemId'];
    result$data['itemId'] = (l$itemId as String);
    final l$itemType = data['itemType'];
    result$data['itemType'] = fromJson$Enum$MappingItemEnum(
      (l$itemType as String),
    );
    return Input$MappingCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MappingExternalSiteEnum get externalSite =>
      (_$data['externalSite'] as Enum$MappingExternalSiteEnum);

  String get externalId => (_$data['externalId'] as String);

  String get itemId => (_$data['itemId'] as String);

  Enum$MappingItemEnum get itemType =>
      (_$data['itemType'] as Enum$MappingItemEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$externalSite = externalSite;
    result$data['externalSite'] = toJson$Enum$MappingExternalSiteEnum(
      l$externalSite,
    );
    final l$externalId = externalId;
    result$data['externalId'] = l$externalId;
    final l$itemId = itemId;
    result$data['itemId'] = l$itemId;
    final l$itemType = itemType;
    result$data['itemType'] = toJson$Enum$MappingItemEnum(l$itemType);
    return result$data;
  }

  CopyWith$Input$MappingCreateInput<Input$MappingCreateInput> get copyWith =>
      CopyWith$Input$MappingCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MappingCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalSite = externalSite;
    final lOther$externalSite = other.externalSite;
    if (l$externalSite != lOther$externalSite) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$itemId = itemId;
    final lOther$itemId = other.itemId;
    if (l$itemId != lOther$itemId) {
      return false;
    }
    final l$itemType = itemType;
    final lOther$itemType = other.itemType;
    if (l$itemType != lOther$itemType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$externalSite = externalSite;
    final l$externalId = externalId;
    final l$itemId = itemId;
    final l$itemType = itemType;
    return Object.hashAll([
      l$externalSite,
      l$externalId,
      l$itemId,
      l$itemType,
    ]);
  }
}

abstract class CopyWith$Input$MappingCreateInput<TRes> {
  factory CopyWith$Input$MappingCreateInput(
    Input$MappingCreateInput instance,
    TRes Function(Input$MappingCreateInput) then,
  ) = _CopyWithImpl$Input$MappingCreateInput;

  factory CopyWith$Input$MappingCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MappingCreateInput;

  TRes call({
    Enum$MappingExternalSiteEnum? externalSite,
    String? externalId,
    String? itemId,
    Enum$MappingItemEnum? itemType,
  });
}

class _CopyWithImpl$Input$MappingCreateInput<TRes>
    implements CopyWith$Input$MappingCreateInput<TRes> {
  _CopyWithImpl$Input$MappingCreateInput(
    this._instance,
    this._then,
  );

  final Input$MappingCreateInput _instance;

  final TRes Function(Input$MappingCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalSite = _undefined,
    Object? externalId = _undefined,
    Object? itemId = _undefined,
    Object? itemType = _undefined,
  }) => _then(
    Input$MappingCreateInput._({
      ..._instance._$data,
      if (externalSite != _undefined && externalSite != null)
        'externalSite': (externalSite as Enum$MappingExternalSiteEnum),
      if (externalId != _undefined && externalId != null)
        'externalId': (externalId as String),
      if (itemId != _undefined && itemId != null) 'itemId': (itemId as String),
      if (itemType != _undefined && itemType != null)
        'itemType': (itemType as Enum$MappingItemEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$MappingCreateInput<TRes>
    implements CopyWith$Input$MappingCreateInput<TRes> {
  _CopyWithStubImpl$Input$MappingCreateInput(this._res);

  TRes _res;

  call({
    Enum$MappingExternalSiteEnum? externalSite,
    String? externalId,
    String? itemId,
    Enum$MappingItemEnum? itemType,
  }) => _res;
}

class Input$MappingUpdateInput {
  factory Input$MappingUpdateInput({
    required String id,
    Enum$MappingExternalSiteEnum? externalSite,
    String? externalId,
    String? itemId,
    Enum$MappingItemEnum? itemType,
  }) => Input$MappingUpdateInput._({
    r'id': id,
    if (externalSite != null) r'externalSite': externalSite,
    if (externalId != null) r'externalId': externalId,
    if (itemId != null) r'itemId': itemId,
    if (itemType != null) r'itemType': itemType,
  });

  Input$MappingUpdateInput._(this._$data);

  factory Input$MappingUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('externalSite')) {
      final l$externalSite = data['externalSite'];
      result$data['externalSite'] = l$externalSite == null
          ? null
          : fromJson$Enum$MappingExternalSiteEnum((l$externalSite as String));
    }
    if (data.containsKey('externalId')) {
      final l$externalId = data['externalId'];
      result$data['externalId'] = (l$externalId as String?);
    }
    if (data.containsKey('itemId')) {
      final l$itemId = data['itemId'];
      result$data['itemId'] = (l$itemId as String?);
    }
    if (data.containsKey('itemType')) {
      final l$itemType = data['itemType'];
      result$data['itemType'] = l$itemType == null
          ? null
          : fromJson$Enum$MappingItemEnum((l$itemType as String));
    }
    return Input$MappingUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Enum$MappingExternalSiteEnum? get externalSite =>
      (_$data['externalSite'] as Enum$MappingExternalSiteEnum?);

  String? get externalId => (_$data['externalId'] as String?);

  String? get itemId => (_$data['itemId'] as String?);

  Enum$MappingItemEnum? get itemType =>
      (_$data['itemType'] as Enum$MappingItemEnum?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('externalSite')) {
      final l$externalSite = externalSite;
      result$data['externalSite'] = l$externalSite == null
          ? null
          : toJson$Enum$MappingExternalSiteEnum(l$externalSite);
    }
    if (_$data.containsKey('externalId')) {
      final l$externalId = externalId;
      result$data['externalId'] = l$externalId;
    }
    if (_$data.containsKey('itemId')) {
      final l$itemId = itemId;
      result$data['itemId'] = l$itemId;
    }
    if (_$data.containsKey('itemType')) {
      final l$itemType = itemType;
      result$data['itemType'] = l$itemType == null
          ? null
          : toJson$Enum$MappingItemEnum(l$itemType);
    }
    return result$data;
  }

  CopyWith$Input$MappingUpdateInput<Input$MappingUpdateInput> get copyWith =>
      CopyWith$Input$MappingUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MappingUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$externalSite = externalSite;
    final lOther$externalSite = other.externalSite;
    if (_$data.containsKey('externalSite') !=
        other._$data.containsKey('externalSite')) {
      return false;
    }
    if (l$externalSite != lOther$externalSite) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (_$data.containsKey('externalId') !=
        other._$data.containsKey('externalId')) {
      return false;
    }
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$itemId = itemId;
    final lOther$itemId = other.itemId;
    if (_$data.containsKey('itemId') != other._$data.containsKey('itemId')) {
      return false;
    }
    if (l$itemId != lOther$itemId) {
      return false;
    }
    final l$itemType = itemType;
    final lOther$itemType = other.itemType;
    if (_$data.containsKey('itemType') !=
        other._$data.containsKey('itemType')) {
      return false;
    }
    if (l$itemType != lOther$itemType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$externalSite = externalSite;
    final l$externalId = externalId;
    final l$itemId = itemId;
    final l$itemType = itemType;
    return Object.hashAll([
      l$id,
      _$data.containsKey('externalSite') ? l$externalSite : const {},
      _$data.containsKey('externalId') ? l$externalId : const {},
      _$data.containsKey('itemId') ? l$itemId : const {},
      _$data.containsKey('itemType') ? l$itemType : const {},
    ]);
  }
}

abstract class CopyWith$Input$MappingUpdateInput<TRes> {
  factory CopyWith$Input$MappingUpdateInput(
    Input$MappingUpdateInput instance,
    TRes Function(Input$MappingUpdateInput) then,
  ) = _CopyWithImpl$Input$MappingUpdateInput;

  factory CopyWith$Input$MappingUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MappingUpdateInput;

  TRes call({
    String? id,
    Enum$MappingExternalSiteEnum? externalSite,
    String? externalId,
    String? itemId,
    Enum$MappingItemEnum? itemType,
  });
}

class _CopyWithImpl$Input$MappingUpdateInput<TRes>
    implements CopyWith$Input$MappingUpdateInput<TRes> {
  _CopyWithImpl$Input$MappingUpdateInput(
    this._instance,
    this._then,
  );

  final Input$MappingUpdateInput _instance;

  final TRes Function(Input$MappingUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? externalSite = _undefined,
    Object? externalId = _undefined,
    Object? itemId = _undefined,
    Object? itemType = _undefined,
  }) => _then(
    Input$MappingUpdateInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (externalSite != _undefined)
        'externalSite': (externalSite as Enum$MappingExternalSiteEnum?),
      if (externalId != _undefined) 'externalId': (externalId as String?),
      if (itemId != _undefined) 'itemId': (itemId as String?),
      if (itemType != _undefined)
        'itemType': (itemType as Enum$MappingItemEnum?),
    }),
  );
}

class _CopyWithStubImpl$Input$MappingUpdateInput<TRes>
    implements CopyWith$Input$MappingUpdateInput<TRes> {
  _CopyWithStubImpl$Input$MappingUpdateInput(this._res);

  TRes _res;

  call({
    String? id,
    Enum$MappingExternalSiteEnum? externalSite,
    String? externalId,
    String? itemId,
    Enum$MappingItemEnum? itemType,
  }) => _res;
}

class Input$MediaCategorySortOption {
  factory Input$MediaCategorySortOption({
    required Enum$MediaCategorySortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$MediaCategorySortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$MediaCategorySortOption._(this._$data);

  factory Input$MediaCategorySortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$MediaCategorySortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$MediaCategorySortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaCategorySortEnum get $on =>
      (_$data['on'] as Enum$MediaCategorySortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$MediaCategorySortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$MediaCategorySortOption<Input$MediaCategorySortOption>
  get copyWith => CopyWith$Input$MediaCategorySortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaCategorySortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$MediaCategorySortOption<TRes> {
  factory CopyWith$Input$MediaCategorySortOption(
    Input$MediaCategorySortOption instance,
    TRes Function(Input$MediaCategorySortOption) then,
  ) = _CopyWithImpl$Input$MediaCategorySortOption;

  factory CopyWith$Input$MediaCategorySortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaCategorySortOption;

  TRes call({
    Enum$MediaCategorySortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$MediaCategorySortOption<TRes>
    implements CopyWith$Input$MediaCategorySortOption<TRes> {
  _CopyWithImpl$Input$MediaCategorySortOption(
    this._instance,
    this._then,
  );

  final Input$MediaCategorySortOption _instance;

  final TRes Function(Input$MediaCategorySortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$MediaCategorySortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$MediaCategorySortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaCategorySortOption<TRes>
    implements CopyWith$Input$MediaCategorySortOption<TRes> {
  _CopyWithStubImpl$Input$MediaCategorySortOption(this._res);

  TRes _res;

  call({
    Enum$MediaCategorySortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$MediaCharacterSortOption {
  factory Input$MediaCharacterSortOption({
    required Enum$MediaCharacterSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$MediaCharacterSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$MediaCharacterSortOption._(this._$data);

  factory Input$MediaCharacterSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$MediaCharacterSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$MediaCharacterSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaCharacterSortEnum get $on =>
      (_$data['on'] as Enum$MediaCharacterSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$MediaCharacterSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$MediaCharacterSortOption<Input$MediaCharacterSortOption>
  get copyWith => CopyWith$Input$MediaCharacterSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaCharacterSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$MediaCharacterSortOption<TRes> {
  factory CopyWith$Input$MediaCharacterSortOption(
    Input$MediaCharacterSortOption instance,
    TRes Function(Input$MediaCharacterSortOption) then,
  ) = _CopyWithImpl$Input$MediaCharacterSortOption;

  factory CopyWith$Input$MediaCharacterSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaCharacterSortOption;

  TRes call({
    Enum$MediaCharacterSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$MediaCharacterSortOption<TRes>
    implements CopyWith$Input$MediaCharacterSortOption<TRes> {
  _CopyWithImpl$Input$MediaCharacterSortOption(
    this._instance,
    this._then,
  );

  final Input$MediaCharacterSortOption _instance;

  final TRes Function(Input$MediaCharacterSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$MediaCharacterSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$MediaCharacterSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaCharacterSortOption<TRes>
    implements CopyWith$Input$MediaCharacterSortOption<TRes> {
  _CopyWithStubImpl$Input$MediaCharacterSortOption(this._res);

  TRes _res;

  call({
    Enum$MediaCharacterSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$MediaReactionCreateInput {
  factory Input$MediaReactionCreateInput({
    required String libraryEntryId,
    required String reaction,
  }) => Input$MediaReactionCreateInput._({
    r'libraryEntryId': libraryEntryId,
    r'reaction': reaction,
  });

  Input$MediaReactionCreateInput._(this._$data);

  factory Input$MediaReactionCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$libraryEntryId = data['libraryEntryId'];
    result$data['libraryEntryId'] = (l$libraryEntryId as String);
    final l$reaction = data['reaction'];
    result$data['reaction'] = (l$reaction as String);
    return Input$MediaReactionCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get libraryEntryId => (_$data['libraryEntryId'] as String);

  String get reaction => (_$data['reaction'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$libraryEntryId = libraryEntryId;
    result$data['libraryEntryId'] = l$libraryEntryId;
    final l$reaction = reaction;
    result$data['reaction'] = l$reaction;
    return result$data;
  }

  CopyWith$Input$MediaReactionCreateInput<Input$MediaReactionCreateInput>
  get copyWith => CopyWith$Input$MediaReactionCreateInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaReactionCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$libraryEntryId = libraryEntryId;
    final lOther$libraryEntryId = other.libraryEntryId;
    if (l$libraryEntryId != lOther$libraryEntryId) {
      return false;
    }
    final l$reaction = reaction;
    final lOther$reaction = other.reaction;
    if (l$reaction != lOther$reaction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$libraryEntryId = libraryEntryId;
    final l$reaction = reaction;
    return Object.hashAll([
      l$libraryEntryId,
      l$reaction,
    ]);
  }
}

abstract class CopyWith$Input$MediaReactionCreateInput<TRes> {
  factory CopyWith$Input$MediaReactionCreateInput(
    Input$MediaReactionCreateInput instance,
    TRes Function(Input$MediaReactionCreateInput) then,
  ) = _CopyWithImpl$Input$MediaReactionCreateInput;

  factory CopyWith$Input$MediaReactionCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaReactionCreateInput;

  TRes call({
    String? libraryEntryId,
    String? reaction,
  });
}

class _CopyWithImpl$Input$MediaReactionCreateInput<TRes>
    implements CopyWith$Input$MediaReactionCreateInput<TRes> {
  _CopyWithImpl$Input$MediaReactionCreateInput(
    this._instance,
    this._then,
  );

  final Input$MediaReactionCreateInput _instance;

  final TRes Function(Input$MediaReactionCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? libraryEntryId = _undefined,
    Object? reaction = _undefined,
  }) => _then(
    Input$MediaReactionCreateInput._({
      ..._instance._$data,
      if (libraryEntryId != _undefined && libraryEntryId != null)
        'libraryEntryId': (libraryEntryId as String),
      if (reaction != _undefined && reaction != null)
        'reaction': (reaction as String),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaReactionCreateInput<TRes>
    implements CopyWith$Input$MediaReactionCreateInput<TRes> {
  _CopyWithStubImpl$Input$MediaReactionCreateInput(this._res);

  TRes _res;

  call({
    String? libraryEntryId,
    String? reaction,
  }) => _res;
}

class Input$MediaReactionDeleteInput {
  factory Input$MediaReactionDeleteInput({required String mediaReactionId}) =>
      Input$MediaReactionDeleteInput._({
        r'mediaReactionId': mediaReactionId,
      });

  Input$MediaReactionDeleteInput._(this._$data);

  factory Input$MediaReactionDeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaReactionId = data['mediaReactionId'];
    result$data['mediaReactionId'] = (l$mediaReactionId as String);
    return Input$MediaReactionDeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaReactionId => (_$data['mediaReactionId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaReactionId = mediaReactionId;
    result$data['mediaReactionId'] = l$mediaReactionId;
    return result$data;
  }

  CopyWith$Input$MediaReactionDeleteInput<Input$MediaReactionDeleteInput>
  get copyWith => CopyWith$Input$MediaReactionDeleteInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaReactionDeleteInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaReactionId = mediaReactionId;
    final lOther$mediaReactionId = other.mediaReactionId;
    if (l$mediaReactionId != lOther$mediaReactionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaReactionId = mediaReactionId;
    return Object.hashAll([l$mediaReactionId]);
  }
}

abstract class CopyWith$Input$MediaReactionDeleteInput<TRes> {
  factory CopyWith$Input$MediaReactionDeleteInput(
    Input$MediaReactionDeleteInput instance,
    TRes Function(Input$MediaReactionDeleteInput) then,
  ) = _CopyWithImpl$Input$MediaReactionDeleteInput;

  factory CopyWith$Input$MediaReactionDeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaReactionDeleteInput;

  TRes call({String? mediaReactionId});
}

class _CopyWithImpl$Input$MediaReactionDeleteInput<TRes>
    implements CopyWith$Input$MediaReactionDeleteInput<TRes> {
  _CopyWithImpl$Input$MediaReactionDeleteInput(
    this._instance,
    this._then,
  );

  final Input$MediaReactionDeleteInput _instance;

  final TRes Function(Input$MediaReactionDeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mediaReactionId = _undefined}) => _then(
    Input$MediaReactionDeleteInput._({
      ..._instance._$data,
      if (mediaReactionId != _undefined && mediaReactionId != null)
        'mediaReactionId': (mediaReactionId as String),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaReactionDeleteInput<TRes>
    implements CopyWith$Input$MediaReactionDeleteInput<TRes> {
  _CopyWithStubImpl$Input$MediaReactionDeleteInput(this._res);

  TRes _res;

  call({String? mediaReactionId}) => _res;
}

class Input$MediaReactionLikeInput {
  factory Input$MediaReactionLikeInput({required String mediaReactionId}) =>
      Input$MediaReactionLikeInput._({
        r'mediaReactionId': mediaReactionId,
      });

  Input$MediaReactionLikeInput._(this._$data);

  factory Input$MediaReactionLikeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaReactionId = data['mediaReactionId'];
    result$data['mediaReactionId'] = (l$mediaReactionId as String);
    return Input$MediaReactionLikeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaReactionId => (_$data['mediaReactionId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaReactionId = mediaReactionId;
    result$data['mediaReactionId'] = l$mediaReactionId;
    return result$data;
  }

  CopyWith$Input$MediaReactionLikeInput<Input$MediaReactionLikeInput>
  get copyWith => CopyWith$Input$MediaReactionLikeInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaReactionLikeInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaReactionId = mediaReactionId;
    final lOther$mediaReactionId = other.mediaReactionId;
    if (l$mediaReactionId != lOther$mediaReactionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaReactionId = mediaReactionId;
    return Object.hashAll([l$mediaReactionId]);
  }
}

abstract class CopyWith$Input$MediaReactionLikeInput<TRes> {
  factory CopyWith$Input$MediaReactionLikeInput(
    Input$MediaReactionLikeInput instance,
    TRes Function(Input$MediaReactionLikeInput) then,
  ) = _CopyWithImpl$Input$MediaReactionLikeInput;

  factory CopyWith$Input$MediaReactionLikeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaReactionLikeInput;

  TRes call({String? mediaReactionId});
}

class _CopyWithImpl$Input$MediaReactionLikeInput<TRes>
    implements CopyWith$Input$MediaReactionLikeInput<TRes> {
  _CopyWithImpl$Input$MediaReactionLikeInput(
    this._instance,
    this._then,
  );

  final Input$MediaReactionLikeInput _instance;

  final TRes Function(Input$MediaReactionLikeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mediaReactionId = _undefined}) => _then(
    Input$MediaReactionLikeInput._({
      ..._instance._$data,
      if (mediaReactionId != _undefined && mediaReactionId != null)
        'mediaReactionId': (mediaReactionId as String),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaReactionLikeInput<TRes>
    implements CopyWith$Input$MediaReactionLikeInput<TRes> {
  _CopyWithStubImpl$Input$MediaReactionLikeInput(this._res);

  TRes _res;

  call({String? mediaReactionId}) => _res;
}

class Input$MediaReactionSortOption {
  factory Input$MediaReactionSortOption({
    required Enum$MediaReactionSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$MediaReactionSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$MediaReactionSortOption._(this._$data);

  factory Input$MediaReactionSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$MediaReactionSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$MediaReactionSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaReactionSortEnum get $on =>
      (_$data['on'] as Enum$MediaReactionSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$MediaReactionSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$MediaReactionSortOption<Input$MediaReactionSortOption>
  get copyWith => CopyWith$Input$MediaReactionSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaReactionSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$MediaReactionSortOption<TRes> {
  factory CopyWith$Input$MediaReactionSortOption(
    Input$MediaReactionSortOption instance,
    TRes Function(Input$MediaReactionSortOption) then,
  ) = _CopyWithImpl$Input$MediaReactionSortOption;

  factory CopyWith$Input$MediaReactionSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaReactionSortOption;

  TRes call({
    Enum$MediaReactionSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$MediaReactionSortOption<TRes>
    implements CopyWith$Input$MediaReactionSortOption<TRes> {
  _CopyWithImpl$Input$MediaReactionSortOption(
    this._instance,
    this._then,
  );

  final Input$MediaReactionSortOption _instance;

  final TRes Function(Input$MediaReactionSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$MediaReactionSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$MediaReactionSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaReactionSortOption<TRes>
    implements CopyWith$Input$MediaReactionSortOption<TRes> {
  _CopyWithStubImpl$Input$MediaReactionSortOption(this._res);

  TRes _res;

  call({
    Enum$MediaReactionSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$MediaReactionUnlikeInput {
  factory Input$MediaReactionUnlikeInput({required String mediaReactionId}) =>
      Input$MediaReactionUnlikeInput._({
        r'mediaReactionId': mediaReactionId,
      });

  Input$MediaReactionUnlikeInput._(this._$data);

  factory Input$MediaReactionUnlikeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaReactionId = data['mediaReactionId'];
    result$data['mediaReactionId'] = (l$mediaReactionId as String);
    return Input$MediaReactionUnlikeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaReactionId => (_$data['mediaReactionId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaReactionId = mediaReactionId;
    result$data['mediaReactionId'] = l$mediaReactionId;
    return result$data;
  }

  CopyWith$Input$MediaReactionUnlikeInput<Input$MediaReactionUnlikeInput>
  get copyWith => CopyWith$Input$MediaReactionUnlikeInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaReactionUnlikeInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaReactionId = mediaReactionId;
    final lOther$mediaReactionId = other.mediaReactionId;
    if (l$mediaReactionId != lOther$mediaReactionId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaReactionId = mediaReactionId;
    return Object.hashAll([l$mediaReactionId]);
  }
}

abstract class CopyWith$Input$MediaReactionUnlikeInput<TRes> {
  factory CopyWith$Input$MediaReactionUnlikeInput(
    Input$MediaReactionUnlikeInput instance,
    TRes Function(Input$MediaReactionUnlikeInput) then,
  ) = _CopyWithImpl$Input$MediaReactionUnlikeInput;

  factory CopyWith$Input$MediaReactionUnlikeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaReactionUnlikeInput;

  TRes call({String? mediaReactionId});
}

class _CopyWithImpl$Input$MediaReactionUnlikeInput<TRes>
    implements CopyWith$Input$MediaReactionUnlikeInput<TRes> {
  _CopyWithImpl$Input$MediaReactionUnlikeInput(
    this._instance,
    this._then,
  );

  final Input$MediaReactionUnlikeInput _instance;

  final TRes Function(Input$MediaReactionUnlikeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mediaReactionId = _undefined}) => _then(
    Input$MediaReactionUnlikeInput._({
      ..._instance._$data,
      if (mediaReactionId != _undefined && mediaReactionId != null)
        'mediaReactionId': (mediaReactionId as String),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaReactionUnlikeInput<TRes>
    implements CopyWith$Input$MediaReactionUnlikeInput<TRes> {
  _CopyWithStubImpl$Input$MediaReactionUnlikeInput(this._res);

  TRes _res;

  call({String? mediaReactionId}) => _res;
}

class Input$MediaReactionVoteSortOption {
  factory Input$MediaReactionVoteSortOption({
    required Enum$MediaReactionVoteSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$MediaReactionVoteSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$MediaReactionVoteSortOption._(this._$data);

  factory Input$MediaReactionVoteSortOption.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$MediaReactionVoteSortEnum(
      (l$$on as String),
    );
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$MediaReactionVoteSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaReactionVoteSortEnum get $on =>
      (_$data['on'] as Enum$MediaReactionVoteSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$MediaReactionVoteSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$MediaReactionVoteSortOption<Input$MediaReactionVoteSortOption>
  get copyWith => CopyWith$Input$MediaReactionVoteSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaReactionVoteSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$MediaReactionVoteSortOption<TRes> {
  factory CopyWith$Input$MediaReactionVoteSortOption(
    Input$MediaReactionVoteSortOption instance,
    TRes Function(Input$MediaReactionVoteSortOption) then,
  ) = _CopyWithImpl$Input$MediaReactionVoteSortOption;

  factory CopyWith$Input$MediaReactionVoteSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaReactionVoteSortOption;

  TRes call({
    Enum$MediaReactionVoteSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$MediaReactionVoteSortOption<TRes>
    implements CopyWith$Input$MediaReactionVoteSortOption<TRes> {
  _CopyWithImpl$Input$MediaReactionVoteSortOption(
    this._instance,
    this._then,
  );

  final Input$MediaReactionVoteSortOption _instance;

  final TRes Function(Input$MediaReactionVoteSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$MediaReactionVoteSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$MediaReactionVoteSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$MediaReactionVoteSortOption<TRes>
    implements CopyWith$Input$MediaReactionVoteSortOption<TRes> {
  _CopyWithStubImpl$Input$MediaReactionVoteSortOption(this._res);

  TRes _res;

  call({
    Enum$MediaReactionVoteSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$PostCreateInput {
  factory Input$PostCreateInput({
    required String content,
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    bool? isSpoiler,
    bool? isNsfw,
    String? spoiledUnitId,
    String? spoiledUnitType,
    String? targetUserId,
  }) => Input$PostCreateInput._({
    r'content': content,
    if (mediaId != null) r'mediaId': mediaId,
    if (mediaType != null) r'mediaType': mediaType,
    if (isSpoiler != null) r'isSpoiler': isSpoiler,
    if (isNsfw != null) r'isNsfw': isNsfw,
    if (spoiledUnitId != null) r'spoiledUnitId': spoiledUnitId,
    if (spoiledUnitType != null) r'spoiledUnitType': spoiledUnitType,
    if (targetUserId != null) r'targetUserId': targetUserId,
  });

  Input$PostCreateInput._(this._$data);

  factory Input$PostCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as String?);
    }
    if (data.containsKey('mediaType')) {
      final l$mediaType = data['mediaType'];
      result$data['mediaType'] = l$mediaType == null
          ? null
          : fromJson$Enum$MediaTypeEnum((l$mediaType as String));
    }
    if (data.containsKey('isSpoiler')) {
      final l$isSpoiler = data['isSpoiler'];
      result$data['isSpoiler'] = (l$isSpoiler as bool?);
    }
    if (data.containsKey('isNsfw')) {
      final l$isNsfw = data['isNsfw'];
      result$data['isNsfw'] = (l$isNsfw as bool?);
    }
    if (data.containsKey('spoiledUnitId')) {
      final l$spoiledUnitId = data['spoiledUnitId'];
      result$data['spoiledUnitId'] = (l$spoiledUnitId as String?);
    }
    if (data.containsKey('spoiledUnitType')) {
      final l$spoiledUnitType = data['spoiledUnitType'];
      result$data['spoiledUnitType'] = (l$spoiledUnitType as String?);
    }
    if (data.containsKey('targetUserId')) {
      final l$targetUserId = data['targetUserId'];
      result$data['targetUserId'] = (l$targetUserId as String?);
    }
    return Input$PostCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get content => (_$data['content'] as String);

  String? get mediaId => (_$data['mediaId'] as String?);

  Enum$MediaTypeEnum? get mediaType =>
      (_$data['mediaType'] as Enum$MediaTypeEnum?);

  bool? get isSpoiler => (_$data['isSpoiler'] as bool?);

  bool? get isNsfw => (_$data['isNsfw'] as bool?);

  String? get spoiledUnitId => (_$data['spoiledUnitId'] as String?);

  String? get spoiledUnitType => (_$data['spoiledUnitType'] as String?);

  String? get targetUserId => (_$data['targetUserId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$content = content;
    result$data['content'] = l$content;
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] = l$mediaType == null
          ? null
          : toJson$Enum$MediaTypeEnum(l$mediaType);
    }
    if (_$data.containsKey('isSpoiler')) {
      final l$isSpoiler = isSpoiler;
      result$data['isSpoiler'] = l$isSpoiler;
    }
    if (_$data.containsKey('isNsfw')) {
      final l$isNsfw = isNsfw;
      result$data['isNsfw'] = l$isNsfw;
    }
    if (_$data.containsKey('spoiledUnitId')) {
      final l$spoiledUnitId = spoiledUnitId;
      result$data['spoiledUnitId'] = l$spoiledUnitId;
    }
    if (_$data.containsKey('spoiledUnitType')) {
      final l$spoiledUnitType = spoiledUnitType;
      result$data['spoiledUnitType'] = l$spoiledUnitType;
    }
    if (_$data.containsKey('targetUserId')) {
      final l$targetUserId = targetUserId;
      result$data['targetUserId'] = l$targetUserId;
    }
    return result$data;
  }

  CopyWith$Input$PostCreateInput<Input$PostCreateInput> get copyWith =>
      CopyWith$Input$PostCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostCreateInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (_$data.containsKey('mediaType') !=
        other._$data.containsKey('mediaType')) {
      return false;
    }
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$isSpoiler = isSpoiler;
    final lOther$isSpoiler = other.isSpoiler;
    if (_$data.containsKey('isSpoiler') !=
        other._$data.containsKey('isSpoiler')) {
      return false;
    }
    if (l$isSpoiler != lOther$isSpoiler) {
      return false;
    }
    final l$isNsfw = isNsfw;
    final lOther$isNsfw = other.isNsfw;
    if (_$data.containsKey('isNsfw') != other._$data.containsKey('isNsfw')) {
      return false;
    }
    if (l$isNsfw != lOther$isNsfw) {
      return false;
    }
    final l$spoiledUnitId = spoiledUnitId;
    final lOther$spoiledUnitId = other.spoiledUnitId;
    if (_$data.containsKey('spoiledUnitId') !=
        other._$data.containsKey('spoiledUnitId')) {
      return false;
    }
    if (l$spoiledUnitId != lOther$spoiledUnitId) {
      return false;
    }
    final l$spoiledUnitType = spoiledUnitType;
    final lOther$spoiledUnitType = other.spoiledUnitType;
    if (_$data.containsKey('spoiledUnitType') !=
        other._$data.containsKey('spoiledUnitType')) {
      return false;
    }
    if (l$spoiledUnitType != lOther$spoiledUnitType) {
      return false;
    }
    final l$targetUserId = targetUserId;
    final lOther$targetUserId = other.targetUserId;
    if (_$data.containsKey('targetUserId') !=
        other._$data.containsKey('targetUserId')) {
      return false;
    }
    if (l$targetUserId != lOther$targetUserId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
    final l$isSpoiler = isSpoiler;
    final l$isNsfw = isNsfw;
    final l$spoiledUnitId = spoiledUnitId;
    final l$spoiledUnitType = spoiledUnitType;
    final l$targetUserId = targetUserId;
    return Object.hashAll([
      l$content,
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
      _$data.containsKey('isSpoiler') ? l$isSpoiler : const {},
      _$data.containsKey('isNsfw') ? l$isNsfw : const {},
      _$data.containsKey('spoiledUnitId') ? l$spoiledUnitId : const {},
      _$data.containsKey('spoiledUnitType') ? l$spoiledUnitType : const {},
      _$data.containsKey('targetUserId') ? l$targetUserId : const {},
    ]);
  }
}

abstract class CopyWith$Input$PostCreateInput<TRes> {
  factory CopyWith$Input$PostCreateInput(
    Input$PostCreateInput instance,
    TRes Function(Input$PostCreateInput) then,
  ) = _CopyWithImpl$Input$PostCreateInput;

  factory CopyWith$Input$PostCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PostCreateInput;

  TRes call({
    String? content,
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    bool? isSpoiler,
    bool? isNsfw,
    String? spoiledUnitId,
    String? spoiledUnitType,
    String? targetUserId,
  });
}

class _CopyWithImpl$Input$PostCreateInput<TRes>
    implements CopyWith$Input$PostCreateInput<TRes> {
  _CopyWithImpl$Input$PostCreateInput(
    this._instance,
    this._then,
  );

  final Input$PostCreateInput _instance;

  final TRes Function(Input$PostCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? isSpoiler = _undefined,
    Object? isNsfw = _undefined,
    Object? spoiledUnitId = _undefined,
    Object? spoiledUnitType = _undefined,
    Object? targetUserId = _undefined,
  }) => _then(
    Input$PostCreateInput._({
      ..._instance._$data,
      if (content != _undefined && content != null)
        'content': (content as String),
      if (mediaId != _undefined) 'mediaId': (mediaId as String?),
      if (mediaType != _undefined)
        'mediaType': (mediaType as Enum$MediaTypeEnum?),
      if (isSpoiler != _undefined) 'isSpoiler': (isSpoiler as bool?),
      if (isNsfw != _undefined) 'isNsfw': (isNsfw as bool?),
      if (spoiledUnitId != _undefined)
        'spoiledUnitId': (spoiledUnitId as String?),
      if (spoiledUnitType != _undefined)
        'spoiledUnitType': (spoiledUnitType as String?),
      if (targetUserId != _undefined) 'targetUserId': (targetUserId as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$PostCreateInput<TRes>
    implements CopyWith$Input$PostCreateInput<TRes> {
  _CopyWithStubImpl$Input$PostCreateInput(this._res);

  TRes _res;

  call({
    String? content,
    String? mediaId,
    Enum$MediaTypeEnum? mediaType,
    bool? isSpoiler,
    bool? isNsfw,
    String? spoiledUnitId,
    String? spoiledUnitType,
    String? targetUserId,
  }) => _res;
}

class Input$PostLikeSortOption {
  factory Input$PostLikeSortOption({
    required Enum$PostLikeSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$PostLikeSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$PostLikeSortOption._(this._$data);

  factory Input$PostLikeSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$PostLikeSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$PostLikeSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PostLikeSortEnum get $on => (_$data['on'] as Enum$PostLikeSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$PostLikeSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$PostLikeSortOption<Input$PostLikeSortOption> get copyWith =>
      CopyWith$Input$PostLikeSortOption(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostLikeSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$PostLikeSortOption<TRes> {
  factory CopyWith$Input$PostLikeSortOption(
    Input$PostLikeSortOption instance,
    TRes Function(Input$PostLikeSortOption) then,
  ) = _CopyWithImpl$Input$PostLikeSortOption;

  factory CopyWith$Input$PostLikeSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$PostLikeSortOption;

  TRes call({
    Enum$PostLikeSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$PostLikeSortOption<TRes>
    implements CopyWith$Input$PostLikeSortOption<TRes> {
  _CopyWithImpl$Input$PostLikeSortOption(
    this._instance,
    this._then,
  );

  final Input$PostLikeSortOption _instance;

  final TRes Function(Input$PostLikeSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$PostLikeSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$PostLikeSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$PostLikeSortOption<TRes>
    implements CopyWith$Input$PostLikeSortOption<TRes> {
  _CopyWithStubImpl$Input$PostLikeSortOption(this._res);

  TRes _res;

  call({
    Enum$PostLikeSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$PostLockInput {
  factory Input$PostLockInput({
    required String id,
    required Enum$LockedReasonEnum lockedReason,
  }) => Input$PostLockInput._({
    r'id': id,
    r'lockedReason': lockedReason,
  });

  Input$PostLockInput._(this._$data);

  factory Input$PostLockInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$lockedReason = data['lockedReason'];
    result$data['lockedReason'] = fromJson$Enum$LockedReasonEnum(
      (l$lockedReason as String),
    );
    return Input$PostLockInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Enum$LockedReasonEnum get lockedReason =>
      (_$data['lockedReason'] as Enum$LockedReasonEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$lockedReason = lockedReason;
    result$data['lockedReason'] = toJson$Enum$LockedReasonEnum(l$lockedReason);
    return result$data;
  }

  CopyWith$Input$PostLockInput<Input$PostLockInput> get copyWith =>
      CopyWith$Input$PostLockInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostLockInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$lockedReason = lockedReason;
    final lOther$lockedReason = other.lockedReason;
    if (l$lockedReason != lOther$lockedReason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$lockedReason = lockedReason;
    return Object.hashAll([
      l$id,
      l$lockedReason,
    ]);
  }
}

abstract class CopyWith$Input$PostLockInput<TRes> {
  factory CopyWith$Input$PostLockInput(
    Input$PostLockInput instance,
    TRes Function(Input$PostLockInput) then,
  ) = _CopyWithImpl$Input$PostLockInput;

  factory CopyWith$Input$PostLockInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PostLockInput;

  TRes call({
    String? id,
    Enum$LockedReasonEnum? lockedReason,
  });
}

class _CopyWithImpl$Input$PostLockInput<TRes>
    implements CopyWith$Input$PostLockInput<TRes> {
  _CopyWithImpl$Input$PostLockInput(
    this._instance,
    this._then,
  );

  final Input$PostLockInput _instance;

  final TRes Function(Input$PostLockInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? lockedReason = _undefined,
  }) => _then(
    Input$PostLockInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (lockedReason != _undefined && lockedReason != null)
        'lockedReason': (lockedReason as Enum$LockedReasonEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$PostLockInput<TRes>
    implements CopyWith$Input$PostLockInput<TRes> {
  _CopyWithStubImpl$Input$PostLockInput(this._res);

  TRes _res;

  call({
    String? id,
    Enum$LockedReasonEnum? lockedReason,
  }) => _res;
}

class Input$PostSortOption {
  factory Input$PostSortOption({
    required Enum$PostSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$PostSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$PostSortOption._(this._$data);

  factory Input$PostSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$PostSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$PostSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PostSortEnum get $on => (_$data['on'] as Enum$PostSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$PostSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$PostSortOption<Input$PostSortOption> get copyWith =>
      CopyWith$Input$PostSortOption(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostSortOption || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$PostSortOption<TRes> {
  factory CopyWith$Input$PostSortOption(
    Input$PostSortOption instance,
    TRes Function(Input$PostSortOption) then,
  ) = _CopyWithImpl$Input$PostSortOption;

  factory CopyWith$Input$PostSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$PostSortOption;

  TRes call({
    Enum$PostSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$PostSortOption<TRes>
    implements CopyWith$Input$PostSortOption<TRes> {
  _CopyWithImpl$Input$PostSortOption(
    this._instance,
    this._then,
  );

  final Input$PostSortOption _instance;

  final TRes Function(Input$PostSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$PostSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null) 'on': ($on as Enum$PostSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$PostSortOption<TRes>
    implements CopyWith$Input$PostSortOption<TRes> {
  _CopyWithStubImpl$Input$PostSortOption(this._res);

  TRes _res;

  call({
    Enum$PostSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$PostUnlockInput {
  factory Input$PostUnlockInput({required String id}) =>
      Input$PostUnlockInput._({
        r'id': id,
      });

  Input$PostUnlockInput._(this._$data);

  factory Input$PostUnlockInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$PostUnlockInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$PostUnlockInput<Input$PostUnlockInput> get copyWith =>
      CopyWith$Input$PostUnlockInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostUnlockInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$PostUnlockInput<TRes> {
  factory CopyWith$Input$PostUnlockInput(
    Input$PostUnlockInput instance,
    TRes Function(Input$PostUnlockInput) then,
  ) = _CopyWithImpl$Input$PostUnlockInput;

  factory CopyWith$Input$PostUnlockInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PostUnlockInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$PostUnlockInput<TRes>
    implements CopyWith$Input$PostUnlockInput<TRes> {
  _CopyWithImpl$Input$PostUnlockInput(
    this._instance,
    this._then,
  );

  final Input$PostUnlockInput _instance;

  final TRes Function(Input$PostUnlockInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input$PostUnlockInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Input$PostUnlockInput<TRes>
    implements CopyWith$Input$PostUnlockInput<TRes> {
  _CopyWithStubImpl$Input$PostUnlockInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$ProfileLinkCreateInput {
  factory Input$ProfileLinkCreateInput({
    required String url,
    required Enum$ProfileLinksSitesEnum profileLinkSite,
  }) => Input$ProfileLinkCreateInput._({
    r'url': url,
    r'profileLinkSite': profileLinkSite,
  });

  Input$ProfileLinkCreateInput._(this._$data);

  factory Input$ProfileLinkCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$url = data['url'];
    result$data['url'] = (l$url as String);
    final l$profileLinkSite = data['profileLinkSite'];
    result$data['profileLinkSite'] = fromJson$Enum$ProfileLinksSitesEnum(
      (l$profileLinkSite as String),
    );
    return Input$ProfileLinkCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get url => (_$data['url'] as String);

  Enum$ProfileLinksSitesEnum get profileLinkSite =>
      (_$data['profileLinkSite'] as Enum$ProfileLinksSitesEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$url = url;
    result$data['url'] = l$url;
    final l$profileLinkSite = profileLinkSite;
    result$data['profileLinkSite'] = toJson$Enum$ProfileLinksSitesEnum(
      l$profileLinkSite,
    );
    return result$data;
  }

  CopyWith$Input$ProfileLinkCreateInput<Input$ProfileLinkCreateInput>
  get copyWith => CopyWith$Input$ProfileLinkCreateInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ProfileLinkCreateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$profileLinkSite = profileLinkSite;
    final lOther$profileLinkSite = other.profileLinkSite;
    if (l$profileLinkSite != lOther$profileLinkSite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$profileLinkSite = profileLinkSite;
    return Object.hashAll([
      l$url,
      l$profileLinkSite,
    ]);
  }
}

abstract class CopyWith$Input$ProfileLinkCreateInput<TRes> {
  factory CopyWith$Input$ProfileLinkCreateInput(
    Input$ProfileLinkCreateInput instance,
    TRes Function(Input$ProfileLinkCreateInput) then,
  ) = _CopyWithImpl$Input$ProfileLinkCreateInput;

  factory CopyWith$Input$ProfileLinkCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProfileLinkCreateInput;

  TRes call({
    String? url,
    Enum$ProfileLinksSitesEnum? profileLinkSite,
  });
}

class _CopyWithImpl$Input$ProfileLinkCreateInput<TRes>
    implements CopyWith$Input$ProfileLinkCreateInput<TRes> {
  _CopyWithImpl$Input$ProfileLinkCreateInput(
    this._instance,
    this._then,
  );

  final Input$ProfileLinkCreateInput _instance;

  final TRes Function(Input$ProfileLinkCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? profileLinkSite = _undefined,
  }) => _then(
    Input$ProfileLinkCreateInput._({
      ..._instance._$data,
      if (url != _undefined && url != null) 'url': (url as String),
      if (profileLinkSite != _undefined && profileLinkSite != null)
        'profileLinkSite': (profileLinkSite as Enum$ProfileLinksSitesEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$ProfileLinkCreateInput<TRes>
    implements CopyWith$Input$ProfileLinkCreateInput<TRes> {
  _CopyWithStubImpl$Input$ProfileLinkCreateInput(this._res);

  TRes _res;

  call({
    String? url,
    Enum$ProfileLinksSitesEnum? profileLinkSite,
  }) => _res;
}

class Input$ProfileLinkDeleteInput {
  factory Input$ProfileLinkDeleteInput({
    required Enum$ProfileLinksSitesEnum profileLink,
  }) => Input$ProfileLinkDeleteInput._({
    r'profileLink': profileLink,
  });

  Input$ProfileLinkDeleteInput._(this._$data);

  factory Input$ProfileLinkDeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$profileLink = data['profileLink'];
    result$data['profileLink'] = fromJson$Enum$ProfileLinksSitesEnum(
      (l$profileLink as String),
    );
    return Input$ProfileLinkDeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ProfileLinksSitesEnum get profileLink =>
      (_$data['profileLink'] as Enum$ProfileLinksSitesEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$profileLink = profileLink;
    result$data['profileLink'] = toJson$Enum$ProfileLinksSitesEnum(
      l$profileLink,
    );
    return result$data;
  }

  CopyWith$Input$ProfileLinkDeleteInput<Input$ProfileLinkDeleteInput>
  get copyWith => CopyWith$Input$ProfileLinkDeleteInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ProfileLinkDeleteInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$profileLink = profileLink;
    final lOther$profileLink = other.profileLink;
    if (l$profileLink != lOther$profileLink) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$profileLink = profileLink;
    return Object.hashAll([l$profileLink]);
  }
}

abstract class CopyWith$Input$ProfileLinkDeleteInput<TRes> {
  factory CopyWith$Input$ProfileLinkDeleteInput(
    Input$ProfileLinkDeleteInput instance,
    TRes Function(Input$ProfileLinkDeleteInput) then,
  ) = _CopyWithImpl$Input$ProfileLinkDeleteInput;

  factory CopyWith$Input$ProfileLinkDeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProfileLinkDeleteInput;

  TRes call({Enum$ProfileLinksSitesEnum? profileLink});
}

class _CopyWithImpl$Input$ProfileLinkDeleteInput<TRes>
    implements CopyWith$Input$ProfileLinkDeleteInput<TRes> {
  _CopyWithImpl$Input$ProfileLinkDeleteInput(
    this._instance,
    this._then,
  );

  final Input$ProfileLinkDeleteInput _instance;

  final TRes Function(Input$ProfileLinkDeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? profileLink = _undefined}) => _then(
    Input$ProfileLinkDeleteInput._({
      ..._instance._$data,
      if (profileLink != _undefined && profileLink != null)
        'profileLink': (profileLink as Enum$ProfileLinksSitesEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$ProfileLinkDeleteInput<TRes>
    implements CopyWith$Input$ProfileLinkDeleteInput<TRes> {
  _CopyWithStubImpl$Input$ProfileLinkDeleteInput(this._res);

  TRes _res;

  call({Enum$ProfileLinksSitesEnum? profileLink}) => _res;
}

class Input$ProfileLinkUpdateInput {
  factory Input$ProfileLinkUpdateInput({
    required String url,
    required Enum$ProfileLinksSitesEnum profileLinkSite,
  }) => Input$ProfileLinkUpdateInput._({
    r'url': url,
    r'profileLinkSite': profileLinkSite,
  });

  Input$ProfileLinkUpdateInput._(this._$data);

  factory Input$ProfileLinkUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$url = data['url'];
    result$data['url'] = (l$url as String);
    final l$profileLinkSite = data['profileLinkSite'];
    result$data['profileLinkSite'] = fromJson$Enum$ProfileLinksSitesEnum(
      (l$profileLinkSite as String),
    );
    return Input$ProfileLinkUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get url => (_$data['url'] as String);

  Enum$ProfileLinksSitesEnum get profileLinkSite =>
      (_$data['profileLinkSite'] as Enum$ProfileLinksSitesEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$url = url;
    result$data['url'] = l$url;
    final l$profileLinkSite = profileLinkSite;
    result$data['profileLinkSite'] = toJson$Enum$ProfileLinksSitesEnum(
      l$profileLinkSite,
    );
    return result$data;
  }

  CopyWith$Input$ProfileLinkUpdateInput<Input$ProfileLinkUpdateInput>
  get copyWith => CopyWith$Input$ProfileLinkUpdateInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ProfileLinkUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$profileLinkSite = profileLinkSite;
    final lOther$profileLinkSite = other.profileLinkSite;
    if (l$profileLinkSite != lOther$profileLinkSite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$profileLinkSite = profileLinkSite;
    return Object.hashAll([
      l$url,
      l$profileLinkSite,
    ]);
  }
}

abstract class CopyWith$Input$ProfileLinkUpdateInput<TRes> {
  factory CopyWith$Input$ProfileLinkUpdateInput(
    Input$ProfileLinkUpdateInput instance,
    TRes Function(Input$ProfileLinkUpdateInput) then,
  ) = _CopyWithImpl$Input$ProfileLinkUpdateInput;

  factory CopyWith$Input$ProfileLinkUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProfileLinkUpdateInput;

  TRes call({
    String? url,
    Enum$ProfileLinksSitesEnum? profileLinkSite,
  });
}

class _CopyWithImpl$Input$ProfileLinkUpdateInput<TRes>
    implements CopyWith$Input$ProfileLinkUpdateInput<TRes> {
  _CopyWithImpl$Input$ProfileLinkUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ProfileLinkUpdateInput _instance;

  final TRes Function(Input$ProfileLinkUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? profileLinkSite = _undefined,
  }) => _then(
    Input$ProfileLinkUpdateInput._({
      ..._instance._$data,
      if (url != _undefined && url != null) 'url': (url as String),
      if (profileLinkSite != _undefined && profileLinkSite != null)
        'profileLinkSite': (profileLinkSite as Enum$ProfileLinksSitesEnum),
    }),
  );
}

class _CopyWithStubImpl$Input$ProfileLinkUpdateInput<TRes>
    implements CopyWith$Input$ProfileLinkUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ProfileLinkUpdateInput(this._res);

  TRes _res;

  call({
    String? url,
    Enum$ProfileLinksSitesEnum? profileLinkSite,
  }) => _res;
}

class Input$ProfileUpdateInput {
  factory Input$ProfileUpdateInput({
    String? id,
    String? name,
    String? slug,
    String? about,
    Enum$WaifuOrHusbandoEnum? waifuOrHusbando,
    String? waifuId,
    String? gender,
    String? birthday,
  }) => Input$ProfileUpdateInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (slug != null) r'slug': slug,
    if (about != null) r'about': about,
    if (waifuOrHusbando != null) r'waifuOrHusbando': waifuOrHusbando,
    if (waifuId != null) r'waifuId': waifuId,
    if (gender != null) r'gender': gender,
    if (birthday != null) r'birthday': birthday,
  });

  Input$ProfileUpdateInput._(this._$data);

  factory Input$ProfileUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('about')) {
      final l$about = data['about'];
      result$data['about'] = (l$about as String?);
    }
    if (data.containsKey('waifuOrHusbando')) {
      final l$waifuOrHusbando = data['waifuOrHusbando'];
      result$data['waifuOrHusbando'] = l$waifuOrHusbando == null
          ? null
          : fromJson$Enum$WaifuOrHusbandoEnum((l$waifuOrHusbando as String));
    }
    if (data.containsKey('waifuId')) {
      final l$waifuId = data['waifuId'];
      result$data['waifuId'] = (l$waifuId as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    if (data.containsKey('birthday')) {
      final l$birthday = data['birthday'];
      result$data['birthday'] = (l$birthday as String?);
    }
    return Input$ProfileUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get name => (_$data['name'] as String?);

  String? get slug => (_$data['slug'] as String?);

  String? get about => (_$data['about'] as String?);

  Enum$WaifuOrHusbandoEnum? get waifuOrHusbando =>
      (_$data['waifuOrHusbando'] as Enum$WaifuOrHusbandoEnum?);

  String? get waifuId => (_$data['waifuId'] as String?);

  String? get gender => (_$data['gender'] as String?);

  String? get birthday => (_$data['birthday'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('about')) {
      final l$about = about;
      result$data['about'] = l$about;
    }
    if (_$data.containsKey('waifuOrHusbando')) {
      final l$waifuOrHusbando = waifuOrHusbando;
      result$data['waifuOrHusbando'] = l$waifuOrHusbando == null
          ? null
          : toJson$Enum$WaifuOrHusbandoEnum(l$waifuOrHusbando);
    }
    if (_$data.containsKey('waifuId')) {
      final l$waifuId = waifuId;
      result$data['waifuId'] = l$waifuId;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('birthday')) {
      final l$birthday = birthday;
      result$data['birthday'] = l$birthday;
    }
    return result$data;
  }

  CopyWith$Input$ProfileUpdateInput<Input$ProfileUpdateInput> get copyWith =>
      CopyWith$Input$ProfileUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ProfileUpdateInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (_$data.containsKey('about') != other._$data.containsKey('about')) {
      return false;
    }
    if (l$about != lOther$about) {
      return false;
    }
    final l$waifuOrHusbando = waifuOrHusbando;
    final lOther$waifuOrHusbando = other.waifuOrHusbando;
    if (_$data.containsKey('waifuOrHusbando') !=
        other._$data.containsKey('waifuOrHusbando')) {
      return false;
    }
    if (l$waifuOrHusbando != lOther$waifuOrHusbando) {
      return false;
    }
    final l$waifuId = waifuId;
    final lOther$waifuId = other.waifuId;
    if (_$data.containsKey('waifuId') != other._$data.containsKey('waifuId')) {
      return false;
    }
    if (l$waifuId != lOther$waifuId) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (_$data.containsKey('birthday') !=
        other._$data.containsKey('birthday')) {
      return false;
    }
    if (l$birthday != lOther$birthday) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$about = about;
    final l$waifuOrHusbando = waifuOrHusbando;
    final l$waifuId = waifuId;
    final l$gender = gender;
    final l$birthday = birthday;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('about') ? l$about : const {},
      _$data.containsKey('waifuOrHusbando') ? l$waifuOrHusbando : const {},
      _$data.containsKey('waifuId') ? l$waifuId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('birthday') ? l$birthday : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProfileUpdateInput<TRes> {
  factory CopyWith$Input$ProfileUpdateInput(
    Input$ProfileUpdateInput instance,
    TRes Function(Input$ProfileUpdateInput) then,
  ) = _CopyWithImpl$Input$ProfileUpdateInput;

  factory CopyWith$Input$ProfileUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProfileUpdateInput;

  TRes call({
    String? id,
    String? name,
    String? slug,
    String? about,
    Enum$WaifuOrHusbandoEnum? waifuOrHusbando,
    String? waifuId,
    String? gender,
    String? birthday,
  });
}

class _CopyWithImpl$Input$ProfileUpdateInput<TRes>
    implements CopyWith$Input$ProfileUpdateInput<TRes> {
  _CopyWithImpl$Input$ProfileUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ProfileUpdateInput _instance;

  final TRes Function(Input$ProfileUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? about = _undefined,
    Object? waifuOrHusbando = _undefined,
    Object? waifuId = _undefined,
    Object? gender = _undefined,
    Object? birthday = _undefined,
  }) => _then(
    Input$ProfileUpdateInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as String?),
      if (name != _undefined) 'name': (name as String?),
      if (slug != _undefined) 'slug': (slug as String?),
      if (about != _undefined) 'about': (about as String?),
      if (waifuOrHusbando != _undefined)
        'waifuOrHusbando': (waifuOrHusbando as Enum$WaifuOrHusbandoEnum?),
      if (waifuId != _undefined) 'waifuId': (waifuId as String?),
      if (gender != _undefined) 'gender': (gender as String?),
      if (birthday != _undefined) 'birthday': (birthday as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$ProfileUpdateInput<TRes>
    implements CopyWith$Input$ProfileUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ProfileUpdateInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? slug,
    String? about,
    Enum$WaifuOrHusbandoEnum? waifuOrHusbando,
    String? waifuId,
    String? gender,
    String? birthday,
  }) => _res;
}

class Input$TitlesListInput {
  factory Input$TitlesListInput({
    String? canonical,
    String? localized,
    List<String>? alternatives,
    String? canonicalLocale,
  }) => Input$TitlesListInput._({
    if (canonical != null) r'canonical': canonical,
    if (localized != null) r'localized': localized,
    if (alternatives != null) r'alternatives': alternatives,
    if (canonicalLocale != null) r'canonicalLocale': canonicalLocale,
  });

  Input$TitlesListInput._(this._$data);

  factory Input$TitlesListInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('canonical')) {
      final l$canonical = data['canonical'];
      result$data['canonical'] = (l$canonical as String?);
    }
    if (data.containsKey('localized')) {
      final l$localized = data['localized'];
      result$data['localized'] = (l$localized as String?);
    }
    if (data.containsKey('alternatives')) {
      final l$alternatives = data['alternatives'];
      result$data['alternatives'] = (l$alternatives as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('canonicalLocale')) {
      final l$canonicalLocale = data['canonicalLocale'];
      result$data['canonicalLocale'] = (l$canonicalLocale as String?);
    }
    return Input$TitlesListInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get canonical => (_$data['canonical'] as String?);

  String? get localized => (_$data['localized'] as String?);

  List<String>? get alternatives => (_$data['alternatives'] as List<String>?);

  String? get canonicalLocale => (_$data['canonicalLocale'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('canonical')) {
      final l$canonical = canonical;
      result$data['canonical'] = l$canonical;
    }
    if (_$data.containsKey('localized')) {
      final l$localized = localized;
      result$data['localized'] = l$localized;
    }
    if (_$data.containsKey('alternatives')) {
      final l$alternatives = alternatives;
      result$data['alternatives'] = l$alternatives?.map((e) => e).toList();
    }
    if (_$data.containsKey('canonicalLocale')) {
      final l$canonicalLocale = canonicalLocale;
      result$data['canonicalLocale'] = l$canonicalLocale;
    }
    return result$data;
  }

  CopyWith$Input$TitlesListInput<Input$TitlesListInput> get copyWith =>
      CopyWith$Input$TitlesListInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TitlesListInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$canonical = canonical;
    final lOther$canonical = other.canonical;
    if (_$data.containsKey('canonical') !=
        other._$data.containsKey('canonical')) {
      return false;
    }
    if (l$canonical != lOther$canonical) {
      return false;
    }
    final l$localized = localized;
    final lOther$localized = other.localized;
    if (_$data.containsKey('localized') !=
        other._$data.containsKey('localized')) {
      return false;
    }
    if (l$localized != lOther$localized) {
      return false;
    }
    final l$alternatives = alternatives;
    final lOther$alternatives = other.alternatives;
    if (_$data.containsKey('alternatives') !=
        other._$data.containsKey('alternatives')) {
      return false;
    }
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
    final l$canonicalLocale = canonicalLocale;
    final lOther$canonicalLocale = other.canonicalLocale;
    if (_$data.containsKey('canonicalLocale') !=
        other._$data.containsKey('canonicalLocale')) {
      return false;
    }
    if (l$canonicalLocale != lOther$canonicalLocale) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$canonical = canonical;
    final l$localized = localized;
    final l$alternatives = alternatives;
    final l$canonicalLocale = canonicalLocale;
    return Object.hashAll([
      _$data.containsKey('canonical') ? l$canonical : const {},
      _$data.containsKey('localized') ? l$localized : const {},
      _$data.containsKey('alternatives')
          ? l$alternatives == null
                ? null
                : Object.hashAll(l$alternatives.map((v) => v))
          : const {},
      _$data.containsKey('canonicalLocale') ? l$canonicalLocale : const {},
    ]);
  }
}

abstract class CopyWith$Input$TitlesListInput<TRes> {
  factory CopyWith$Input$TitlesListInput(
    Input$TitlesListInput instance,
    TRes Function(Input$TitlesListInput) then,
  ) = _CopyWithImpl$Input$TitlesListInput;

  factory CopyWith$Input$TitlesListInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TitlesListInput;

  TRes call({
    String? canonical,
    String? localized,
    List<String>? alternatives,
    String? canonicalLocale,
  });
}

class _CopyWithImpl$Input$TitlesListInput<TRes>
    implements CopyWith$Input$TitlesListInput<TRes> {
  _CopyWithImpl$Input$TitlesListInput(
    this._instance,
    this._then,
  );

  final Input$TitlesListInput _instance;

  final TRes Function(Input$TitlesListInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? canonical = _undefined,
    Object? localized = _undefined,
    Object? alternatives = _undefined,
    Object? canonicalLocale = _undefined,
  }) => _then(
    Input$TitlesListInput._({
      ..._instance._$data,
      if (canonical != _undefined) 'canonical': (canonical as String?),
      if (localized != _undefined) 'localized': (localized as String?),
      if (alternatives != _undefined)
        'alternatives': (alternatives as List<String>?),
      if (canonicalLocale != _undefined)
        'canonicalLocale': (canonicalLocale as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$TitlesListInput<TRes>
    implements CopyWith$Input$TitlesListInput<TRes> {
  _CopyWithStubImpl$Input$TitlesListInput(this._res);

  TRes _res;

  call({
    String? canonical,
    String? localized,
    List<String>? alternatives,
    String? canonicalLocale,
  }) => _res;
}

class Input$VolumeSortOption {
  factory Input$VolumeSortOption({
    required Enum$VolumeSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$VolumeSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$VolumeSortOption._(this._$data);

  factory Input$VolumeSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$VolumeSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$VolumeSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$VolumeSortEnum get $on => (_$data['on'] as Enum$VolumeSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$VolumeSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$VolumeSortOption<Input$VolumeSortOption> get copyWith =>
      CopyWith$Input$VolumeSortOption(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VolumeSortOption || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$VolumeSortOption<TRes> {
  factory CopyWith$Input$VolumeSortOption(
    Input$VolumeSortOption instance,
    TRes Function(Input$VolumeSortOption) then,
  ) = _CopyWithImpl$Input$VolumeSortOption;

  factory CopyWith$Input$VolumeSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$VolumeSortOption;

  TRes call({
    Enum$VolumeSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$VolumeSortOption<TRes>
    implements CopyWith$Input$VolumeSortOption<TRes> {
  _CopyWithImpl$Input$VolumeSortOption(
    this._instance,
    this._then,
  );

  final Input$VolumeSortOption _instance;

  final TRes Function(Input$VolumeSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$VolumeSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null) 'on': ($on as Enum$VolumeSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$VolumeSortOption<TRes>
    implements CopyWith$Input$VolumeSortOption<TRes> {
  _CopyWithStubImpl$Input$VolumeSortOption(this._res);

  TRes _res;

  call({
    Enum$VolumeSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$WikiSubmissionCreateDraftInput {
  factory Input$WikiSubmissionCreateDraftInput({
    required String data,
    String? title,
    String? notes,
  }) => Input$WikiSubmissionCreateDraftInput._({
    r'data': data,
    if (title != null) r'title': title,
    if (notes != null) r'notes': notes,
  });

  Input$WikiSubmissionCreateDraftInput._(this._$data);

  factory Input$WikiSubmissionCreateDraftInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input$WikiSubmissionCreateDraftInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get data => (_$data['data'] as String);

  String? get title => (_$data['title'] as String?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith$Input$WikiSubmissionCreateDraftInput<
    Input$WikiSubmissionCreateDraftInput
  >
  get copyWith => CopyWith$Input$WikiSubmissionCreateDraftInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$WikiSubmissionCreateDraftInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$title = title;
    final l$notes = notes;
    return Object.hashAll([
      l$data,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith$Input$WikiSubmissionCreateDraftInput<TRes> {
  factory CopyWith$Input$WikiSubmissionCreateDraftInput(
    Input$WikiSubmissionCreateDraftInput instance,
    TRes Function(Input$WikiSubmissionCreateDraftInput) then,
  ) = _CopyWithImpl$Input$WikiSubmissionCreateDraftInput;

  factory CopyWith$Input$WikiSubmissionCreateDraftInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WikiSubmissionCreateDraftInput;

  TRes call({
    String? data,
    String? title,
    String? notes,
  });
}

class _CopyWithImpl$Input$WikiSubmissionCreateDraftInput<TRes>
    implements CopyWith$Input$WikiSubmissionCreateDraftInput<TRes> {
  _CopyWithImpl$Input$WikiSubmissionCreateDraftInput(
    this._instance,
    this._then,
  );

  final Input$WikiSubmissionCreateDraftInput _instance;

  final TRes Function(Input$WikiSubmissionCreateDraftInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? title = _undefined,
    Object? notes = _undefined,
  }) => _then(
    Input$WikiSubmissionCreateDraftInput._({
      ..._instance._$data,
      if (data != _undefined && data != null) 'data': (data as String),
      if (title != _undefined) 'title': (title as String?),
      if (notes != _undefined) 'notes': (notes as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$WikiSubmissionCreateDraftInput<TRes>
    implements CopyWith$Input$WikiSubmissionCreateDraftInput<TRes> {
  _CopyWithStubImpl$Input$WikiSubmissionCreateDraftInput(this._res);

  TRes _res;

  call({
    String? data,
    String? title,
    String? notes,
  }) => _res;
}

class Input$WikiSubmissionSortOption {
  factory Input$WikiSubmissionSortOption({
    required Enum$WikiSubmissionSortEnum $on,
    required Enum$SortDirection direction,
  }) => Input$WikiSubmissionSortOption._({
    r'on': $on,
    r'direction': direction,
  });

  Input$WikiSubmissionSortOption._(this._$data);

  factory Input$WikiSubmissionSortOption.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$on = data['on'];
    result$data['on'] = fromJson$Enum$WikiSubmissionSortEnum((l$$on as String));
    final l$direction = data['direction'];
    result$data['direction'] = fromJson$Enum$SortDirection(
      (l$direction as String),
    );
    return Input$WikiSubmissionSortOption._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$WikiSubmissionSortEnum get $on =>
      (_$data['on'] as Enum$WikiSubmissionSortEnum);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$on = $on;
    result$data['on'] = toJson$Enum$WikiSubmissionSortEnum(l$$on);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    return result$data;
  }

  CopyWith$Input$WikiSubmissionSortOption<Input$WikiSubmissionSortOption>
  get copyWith => CopyWith$Input$WikiSubmissionSortOption(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$WikiSubmissionSortOption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$on = $on;
    final lOther$$on = other.$on;
    if (l$$on != lOther$$on) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$on = $on;
    final l$direction = direction;
    return Object.hashAll([
      l$$on,
      l$direction,
    ]);
  }
}

abstract class CopyWith$Input$WikiSubmissionSortOption<TRes> {
  factory CopyWith$Input$WikiSubmissionSortOption(
    Input$WikiSubmissionSortOption instance,
    TRes Function(Input$WikiSubmissionSortOption) then,
  ) = _CopyWithImpl$Input$WikiSubmissionSortOption;

  factory CopyWith$Input$WikiSubmissionSortOption.stub(TRes res) =
      _CopyWithStubImpl$Input$WikiSubmissionSortOption;

  TRes call({
    Enum$WikiSubmissionSortEnum? $on,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$WikiSubmissionSortOption<TRes>
    implements CopyWith$Input$WikiSubmissionSortOption<TRes> {
  _CopyWithImpl$Input$WikiSubmissionSortOption(
    this._instance,
    this._then,
  );

  final Input$WikiSubmissionSortOption _instance;

  final TRes Function(Input$WikiSubmissionSortOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $on = _undefined,
    Object? direction = _undefined,
  }) => _then(
    Input$WikiSubmissionSortOption._({
      ..._instance._$data,
      if ($on != _undefined && $on != null)
        'on': ($on as Enum$WikiSubmissionSortEnum),
      if (direction != _undefined && direction != null)
        'direction': (direction as Enum$SortDirection),
    }),
  );
}

class _CopyWithStubImpl$Input$WikiSubmissionSortOption<TRes>
    implements CopyWith$Input$WikiSubmissionSortOption<TRes> {
  _CopyWithStubImpl$Input$WikiSubmissionSortOption(this._res);

  TRes _res;

  call({
    Enum$WikiSubmissionSortEnum? $on,
    Enum$SortDirection? direction,
  }) => _res;
}

class Input$WikiSubmissionSubmitDraftInput {
  factory Input$WikiSubmissionSubmitDraftInput({
    required String id,
    required String data,
    String? title,
    String? notes,
  }) => Input$WikiSubmissionSubmitDraftInput._({
    r'id': id,
    r'data': data,
    if (title != null) r'title': title,
    if (notes != null) r'notes': notes,
  });

  Input$WikiSubmissionSubmitDraftInput._(this._$data);

  factory Input$WikiSubmissionSubmitDraftInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input$WikiSubmissionSubmitDraftInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get data => (_$data['data'] as String);

  String? get title => (_$data['title'] as String?);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$data = data;
    result$data['data'] = l$data;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith$Input$WikiSubmissionSubmitDraftInput<
    Input$WikiSubmissionSubmitDraftInput
  >
  get copyWith => CopyWith$Input$WikiSubmissionSubmitDraftInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$WikiSubmissionSubmitDraftInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$data = data;
    final l$title = title;
    final l$notes = notes;
    return Object.hashAll([
      l$id,
      l$data,
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith$Input$WikiSubmissionSubmitDraftInput<TRes> {
  factory CopyWith$Input$WikiSubmissionSubmitDraftInput(
    Input$WikiSubmissionSubmitDraftInput instance,
    TRes Function(Input$WikiSubmissionSubmitDraftInput) then,
  ) = _CopyWithImpl$Input$WikiSubmissionSubmitDraftInput;

  factory CopyWith$Input$WikiSubmissionSubmitDraftInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WikiSubmissionSubmitDraftInput;

  TRes call({
    String? id,
    String? data,
    String? title,
    String? notes,
  });
}

class _CopyWithImpl$Input$WikiSubmissionSubmitDraftInput<TRes>
    implements CopyWith$Input$WikiSubmissionSubmitDraftInput<TRes> {
  _CopyWithImpl$Input$WikiSubmissionSubmitDraftInput(
    this._instance,
    this._then,
  );

  final Input$WikiSubmissionSubmitDraftInput _instance;

  final TRes Function(Input$WikiSubmissionSubmitDraftInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? data = _undefined,
    Object? title = _undefined,
    Object? notes = _undefined,
  }) => _then(
    Input$WikiSubmissionSubmitDraftInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (data != _undefined && data != null) 'data': (data as String),
      if (title != _undefined) 'title': (title as String?),
      if (notes != _undefined) 'notes': (notes as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$WikiSubmissionSubmitDraftInput<TRes>
    implements CopyWith$Input$WikiSubmissionSubmitDraftInput<TRes> {
  _CopyWithStubImpl$Input$WikiSubmissionSubmitDraftInput(this._res);

  TRes _res;

  call({
    String? id,
    String? data,
    String? title,
    String? notes,
  }) => _res;
}

class Input$WikiSubmissionUpdateDraftInput {
  factory Input$WikiSubmissionUpdateDraftInput({
    required String id,
    required String data,
    String? notes,
  }) => Input$WikiSubmissionUpdateDraftInput._({
    r'id': id,
    r'data': data,
    if (notes != null) r'notes': notes,
  });

  Input$WikiSubmissionUpdateDraftInput._(this._$data);

  factory Input$WikiSubmissionUpdateDraftInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$data = data['data'];
    result$data['data'] = (l$data as String);
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    return Input$WikiSubmissionUpdateDraftInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get data => (_$data['data'] as String);

  String? get notes => (_$data['notes'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$data = data;
    result$data['data'] = l$data;
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    return result$data;
  }

  CopyWith$Input$WikiSubmissionUpdateDraftInput<
    Input$WikiSubmissionUpdateDraftInput
  >
  get copyWith => CopyWith$Input$WikiSubmissionUpdateDraftInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$WikiSubmissionUpdateDraftInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$data = data;
    final l$notes = notes;
    return Object.hashAll([
      l$id,
      l$data,
      _$data.containsKey('notes') ? l$notes : const {},
    ]);
  }
}

abstract class CopyWith$Input$WikiSubmissionUpdateDraftInput<TRes> {
  factory CopyWith$Input$WikiSubmissionUpdateDraftInput(
    Input$WikiSubmissionUpdateDraftInput instance,
    TRes Function(Input$WikiSubmissionUpdateDraftInput) then,
  ) = _CopyWithImpl$Input$WikiSubmissionUpdateDraftInput;

  factory CopyWith$Input$WikiSubmissionUpdateDraftInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WikiSubmissionUpdateDraftInput;

  TRes call({
    String? id,
    String? data,
    String? notes,
  });
}

class _CopyWithImpl$Input$WikiSubmissionUpdateDraftInput<TRes>
    implements CopyWith$Input$WikiSubmissionUpdateDraftInput<TRes> {
  _CopyWithImpl$Input$WikiSubmissionUpdateDraftInput(
    this._instance,
    this._then,
  );

  final Input$WikiSubmissionUpdateDraftInput _instance;

  final TRes Function(Input$WikiSubmissionUpdateDraftInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? data = _undefined,
    Object? notes = _undefined,
  }) => _then(
    Input$WikiSubmissionUpdateDraftInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (data != _undefined && data != null) 'data': (data as String),
      if (notes != _undefined) 'notes': (notes as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$WikiSubmissionUpdateDraftInput<TRes>
    implements CopyWith$Input$WikiSubmissionUpdateDraftInput<TRes> {
  _CopyWithStubImpl$Input$WikiSubmissionUpdateDraftInput(this._res);

  TRes _res;

  call({
    String? id,
    String? data,
    String? notes,
  }) => _res;
}

enum Enum$AgeRatingEnum {
  G,
  PG,
  R,
  R18,
  $unknown;

  factory Enum$AgeRatingEnum.fromJson(String value) =>
      fromJson$Enum$AgeRatingEnum(value);

  String toJson() => toJson$Enum$AgeRatingEnum(this);
}

String toJson$Enum$AgeRatingEnum(Enum$AgeRatingEnum e) {
  switch (e) {
    case Enum$AgeRatingEnum.G:
      return r'G';
    case Enum$AgeRatingEnum.PG:
      return r'PG';
    case Enum$AgeRatingEnum.R:
      return r'R';
    case Enum$AgeRatingEnum.R18:
      return r'R18';
    case Enum$AgeRatingEnum.$unknown:
      return r'$unknown';
  }
}

Enum$AgeRatingEnum fromJson$Enum$AgeRatingEnum(String value) {
  switch (value) {
    case r'G':
      return Enum$AgeRatingEnum.G;
    case r'PG':
      return Enum$AgeRatingEnum.PG;
    case r'R':
      return Enum$AgeRatingEnum.R;
    case r'R18':
      return Enum$AgeRatingEnum.R18;
    default:
      return Enum$AgeRatingEnum.$unknown;
  }
}

enum Enum$AnimeSubtypeEnum {
  TV,
  SPECIAL,
  OVA,
  ONA,
  MOVIE,
  MUSIC,
  $unknown;

  factory Enum$AnimeSubtypeEnum.fromJson(String value) =>
      fromJson$Enum$AnimeSubtypeEnum(value);

  String toJson() => toJson$Enum$AnimeSubtypeEnum(this);
}

String toJson$Enum$AnimeSubtypeEnum(Enum$AnimeSubtypeEnum e) {
  switch (e) {
    case Enum$AnimeSubtypeEnum.TV:
      return r'TV';
    case Enum$AnimeSubtypeEnum.SPECIAL:
      return r'SPECIAL';
    case Enum$AnimeSubtypeEnum.OVA:
      return r'OVA';
    case Enum$AnimeSubtypeEnum.ONA:
      return r'ONA';
    case Enum$AnimeSubtypeEnum.MOVIE:
      return r'MOVIE';
    case Enum$AnimeSubtypeEnum.MUSIC:
      return r'MUSIC';
    case Enum$AnimeSubtypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$AnimeSubtypeEnum fromJson$Enum$AnimeSubtypeEnum(String value) {
  switch (value) {
    case r'TV':
      return Enum$AnimeSubtypeEnum.TV;
    case r'SPECIAL':
      return Enum$AnimeSubtypeEnum.SPECIAL;
    case r'OVA':
      return Enum$AnimeSubtypeEnum.OVA;
    case r'ONA':
      return Enum$AnimeSubtypeEnum.ONA;
    case r'MOVIE':
      return Enum$AnimeSubtypeEnum.MOVIE;
    case r'MUSIC':
      return Enum$AnimeSubtypeEnum.MUSIC;
    default:
      return Enum$AnimeSubtypeEnum.$unknown;
  }
}

enum Enum$ChapterSortEnum {
  CREATED_AT,
  UPDATED_AT,
  NUMBER,
  $unknown;

  factory Enum$ChapterSortEnum.fromJson(String value) =>
      fromJson$Enum$ChapterSortEnum(value);

  String toJson() => toJson$Enum$ChapterSortEnum(this);
}

String toJson$Enum$ChapterSortEnum(Enum$ChapterSortEnum e) {
  switch (e) {
    case Enum$ChapterSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$ChapterSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$ChapterSortEnum.NUMBER:
      return r'NUMBER';
    case Enum$ChapterSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ChapterSortEnum fromJson$Enum$ChapterSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$ChapterSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$ChapterSortEnum.UPDATED_AT;
    case r'NUMBER':
      return Enum$ChapterSortEnum.NUMBER;
    default:
      return Enum$ChapterSortEnum.$unknown;
  }
}

enum Enum$CharacterRoleEnum {
  MAIN,
  RECURRING,
  BACKGROUND,
  CAMEO,
  $unknown;

  factory Enum$CharacterRoleEnum.fromJson(String value) =>
      fromJson$Enum$CharacterRoleEnum(value);

  String toJson() => toJson$Enum$CharacterRoleEnum(this);
}

String toJson$Enum$CharacterRoleEnum(Enum$CharacterRoleEnum e) {
  switch (e) {
    case Enum$CharacterRoleEnum.MAIN:
      return r'MAIN';
    case Enum$CharacterRoleEnum.RECURRING:
      return r'RECURRING';
    case Enum$CharacterRoleEnum.BACKGROUND:
      return r'BACKGROUND';
    case Enum$CharacterRoleEnum.CAMEO:
      return r'CAMEO';
    case Enum$CharacterRoleEnum.$unknown:
      return r'$unknown';
  }
}

Enum$CharacterRoleEnum fromJson$Enum$CharacterRoleEnum(String value) {
  switch (value) {
    case r'MAIN':
      return Enum$CharacterRoleEnum.MAIN;
    case r'RECURRING':
      return Enum$CharacterRoleEnum.RECURRING;
    case r'BACKGROUND':
      return Enum$CharacterRoleEnum.BACKGROUND;
    case r'CAMEO':
      return Enum$CharacterRoleEnum.CAMEO;
    default:
      return Enum$CharacterRoleEnum.$unknown;
  }
}

enum Enum$CharacterVoiceSortEnum {
  CREATED_AT,
  UPDATED_AT,
  $unknown;

  factory Enum$CharacterVoiceSortEnum.fromJson(String value) =>
      fromJson$Enum$CharacterVoiceSortEnum(value);

  String toJson() => toJson$Enum$CharacterVoiceSortEnum(this);
}

String toJson$Enum$CharacterVoiceSortEnum(Enum$CharacterVoiceSortEnum e) {
  switch (e) {
    case Enum$CharacterVoiceSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$CharacterVoiceSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$CharacterVoiceSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$CharacterVoiceSortEnum fromJson$Enum$CharacterVoiceSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$CharacterVoiceSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$CharacterVoiceSortEnum.UPDATED_AT;
    default:
      return Enum$CharacterVoiceSortEnum.$unknown;
  }
}

enum Enum$CommentLikeSortEnum {
  FOLLOWING,
  CREATED_AT,
  $unknown;

  factory Enum$CommentLikeSortEnum.fromJson(String value) =>
      fromJson$Enum$CommentLikeSortEnum(value);

  String toJson() => toJson$Enum$CommentLikeSortEnum(this);
}

String toJson$Enum$CommentLikeSortEnum(Enum$CommentLikeSortEnum e) {
  switch (e) {
    case Enum$CommentLikeSortEnum.FOLLOWING:
      return r'FOLLOWING';
    case Enum$CommentLikeSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$CommentLikeSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$CommentLikeSortEnum fromJson$Enum$CommentLikeSortEnum(String value) {
  switch (value) {
    case r'FOLLOWING':
      return Enum$CommentLikeSortEnum.FOLLOWING;
    case r'CREATED_AT':
      return Enum$CommentLikeSortEnum.CREATED_AT;
    default:
      return Enum$CommentLikeSortEnum.$unknown;
  }
}

enum Enum$CommentSortEnum {
  FOLLOWING,
  CREATED_AT,
  LIKES_COUNT,
  $unknown;

  factory Enum$CommentSortEnum.fromJson(String value) =>
      fromJson$Enum$CommentSortEnum(value);

  String toJson() => toJson$Enum$CommentSortEnum(this);
}

String toJson$Enum$CommentSortEnum(Enum$CommentSortEnum e) {
  switch (e) {
    case Enum$CommentSortEnum.FOLLOWING:
      return r'FOLLOWING';
    case Enum$CommentSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$CommentSortEnum.LIKES_COUNT:
      return r'LIKES_COUNT';
    case Enum$CommentSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$CommentSortEnum fromJson$Enum$CommentSortEnum(String value) {
  switch (value) {
    case r'FOLLOWING':
      return Enum$CommentSortEnum.FOLLOWING;
    case r'CREATED_AT':
      return Enum$CommentSortEnum.CREATED_AT;
    case r'LIKES_COUNT':
      return Enum$CommentSortEnum.LIKES_COUNT;
    default:
      return Enum$CommentSortEnum.$unknown;
  }
}

enum Enum$EpisodeSortEnum {
  CREATED_AT,
  UPDATED_AT,
  NUMBER,
  $unknown;

  factory Enum$EpisodeSortEnum.fromJson(String value) =>
      fromJson$Enum$EpisodeSortEnum(value);

  String toJson() => toJson$Enum$EpisodeSortEnum(this);
}

String toJson$Enum$EpisodeSortEnum(Enum$EpisodeSortEnum e) {
  switch (e) {
    case Enum$EpisodeSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$EpisodeSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$EpisodeSortEnum.NUMBER:
      return r'NUMBER';
    case Enum$EpisodeSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$EpisodeSortEnum fromJson$Enum$EpisodeSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$EpisodeSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$EpisodeSortEnum.UPDATED_AT;
    case r'NUMBER':
      return Enum$EpisodeSortEnum.NUMBER;
    default:
      return Enum$EpisodeSortEnum.$unknown;
  }
}

enum Enum$ExternalIdentityProviderEnum {
  FACEBOOK,
  $unknown;

  factory Enum$ExternalIdentityProviderEnum.fromJson(String value) =>
      fromJson$Enum$ExternalIdentityProviderEnum(value);

  String toJson() => toJson$Enum$ExternalIdentityProviderEnum(this);
}

String toJson$Enum$ExternalIdentityProviderEnum(
  Enum$ExternalIdentityProviderEnum e,
) {
  switch (e) {
    case Enum$ExternalIdentityProviderEnum.FACEBOOK:
      return r'FACEBOOK';
    case Enum$ExternalIdentityProviderEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ExternalIdentityProviderEnum fromJson$Enum$ExternalIdentityProviderEnum(
  String value,
) {
  switch (value) {
    case r'FACEBOOK':
      return Enum$ExternalIdentityProviderEnum.FACEBOOK;
    default:
      return Enum$ExternalIdentityProviderEnum.$unknown;
  }
}

enum Enum$FavoriteEnum {
  ANIME,
  MANGA,
  CHARACTER,
  PERSON,
  $unknown;

  factory Enum$FavoriteEnum.fromJson(String value) =>
      fromJson$Enum$FavoriteEnum(value);

  String toJson() => toJson$Enum$FavoriteEnum(this);
}

String toJson$Enum$FavoriteEnum(Enum$FavoriteEnum e) {
  switch (e) {
    case Enum$FavoriteEnum.ANIME:
      return r'ANIME';
    case Enum$FavoriteEnum.MANGA:
      return r'MANGA';
    case Enum$FavoriteEnum.CHARACTER:
      return r'CHARACTER';
    case Enum$FavoriteEnum.PERSON:
      return r'PERSON';
    case Enum$FavoriteEnum.$unknown:
      return r'$unknown';
  }
}

Enum$FavoriteEnum fromJson$Enum$FavoriteEnum(String value) {
  switch (value) {
    case r'ANIME':
      return Enum$FavoriteEnum.ANIME;
    case r'MANGA':
      return Enum$FavoriteEnum.MANGA;
    case r'CHARACTER':
      return Enum$FavoriteEnum.CHARACTER;
    case r'PERSON':
      return Enum$FavoriteEnum.PERSON;
    default:
      return Enum$FavoriteEnum.$unknown;
  }
}

enum Enum$FollowSortEnum {
  FOLLOWING_FOLLOWED,
  FOLLOWING_FOLLOWER,
  CREATED_AT,
  $unknown;

  factory Enum$FollowSortEnum.fromJson(String value) =>
      fromJson$Enum$FollowSortEnum(value);

  String toJson() => toJson$Enum$FollowSortEnum(this);
}

String toJson$Enum$FollowSortEnum(Enum$FollowSortEnum e) {
  switch (e) {
    case Enum$FollowSortEnum.FOLLOWING_FOLLOWED:
      return r'FOLLOWING_FOLLOWED';
    case Enum$FollowSortEnum.FOLLOWING_FOLLOWER:
      return r'FOLLOWING_FOLLOWER';
    case Enum$FollowSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$FollowSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$FollowSortEnum fromJson$Enum$FollowSortEnum(String value) {
  switch (value) {
    case r'FOLLOWING_FOLLOWED':
      return Enum$FollowSortEnum.FOLLOWING_FOLLOWED;
    case r'FOLLOWING_FOLLOWER':
      return Enum$FollowSortEnum.FOLLOWING_FOLLOWER;
    case r'CREATED_AT':
      return Enum$FollowSortEnum.CREATED_AT;
    default:
      return Enum$FollowSortEnum.$unknown;
  }
}

enum Enum$InstallmentSortEnum {
  RELEASE_ORDER,
  ALTERNATIVE_ORDER,
  $unknown;

  factory Enum$InstallmentSortEnum.fromJson(String value) =>
      fromJson$Enum$InstallmentSortEnum(value);

  String toJson() => toJson$Enum$InstallmentSortEnum(this);
}

String toJson$Enum$InstallmentSortEnum(Enum$InstallmentSortEnum e) {
  switch (e) {
    case Enum$InstallmentSortEnum.RELEASE_ORDER:
      return r'RELEASE_ORDER';
    case Enum$InstallmentSortEnum.ALTERNATIVE_ORDER:
      return r'ALTERNATIVE_ORDER';
    case Enum$InstallmentSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$InstallmentSortEnum fromJson$Enum$InstallmentSortEnum(String value) {
  switch (value) {
    case r'RELEASE_ORDER':
      return Enum$InstallmentSortEnum.RELEASE_ORDER;
    case r'ALTERNATIVE_ORDER':
      return Enum$InstallmentSortEnum.ALTERNATIVE_ORDER;
    default:
      return Enum$InstallmentSortEnum.$unknown;
  }
}

enum Enum$InstallmentTagEnum {
  MAIN_STORY,
  SIDE_STORY,
  SPINOFF,
  CROSSOVER,
  ALTERNATE_SETTING,
  ALTERNATE_VERSION,
  $unknown;

  factory Enum$InstallmentTagEnum.fromJson(String value) =>
      fromJson$Enum$InstallmentTagEnum(value);

  String toJson() => toJson$Enum$InstallmentTagEnum(this);
}

String toJson$Enum$InstallmentTagEnum(Enum$InstallmentTagEnum e) {
  switch (e) {
    case Enum$InstallmentTagEnum.MAIN_STORY:
      return r'MAIN_STORY';
    case Enum$InstallmentTagEnum.SIDE_STORY:
      return r'SIDE_STORY';
    case Enum$InstallmentTagEnum.SPINOFF:
      return r'SPINOFF';
    case Enum$InstallmentTagEnum.CROSSOVER:
      return r'CROSSOVER';
    case Enum$InstallmentTagEnum.ALTERNATE_SETTING:
      return r'ALTERNATE_SETTING';
    case Enum$InstallmentTagEnum.ALTERNATE_VERSION:
      return r'ALTERNATE_VERSION';
    case Enum$InstallmentTagEnum.$unknown:
      return r'$unknown';
  }
}

Enum$InstallmentTagEnum fromJson$Enum$InstallmentTagEnum(String value) {
  switch (value) {
    case r'MAIN_STORY':
      return Enum$InstallmentTagEnum.MAIN_STORY;
    case r'SIDE_STORY':
      return Enum$InstallmentTagEnum.SIDE_STORY;
    case r'SPINOFF':
      return Enum$InstallmentTagEnum.SPINOFF;
    case r'CROSSOVER':
      return Enum$InstallmentTagEnum.CROSSOVER;
    case r'ALTERNATE_SETTING':
      return Enum$InstallmentTagEnum.ALTERNATE_SETTING;
    case r'ALTERNATE_VERSION':
      return Enum$InstallmentTagEnum.ALTERNATE_VERSION;
    default:
      return Enum$InstallmentTagEnum.$unknown;
  }
}

enum Enum$LibraryEntrySortEnum {
  MEDIA_TYPE,
  STATUS,
  CREATED_AT,
  UPDATED_AT,
  PROGRESS,
  RATING,
  STARTED_AT,
  FINISHED_AT,
  TITLE,
  $unknown;

  factory Enum$LibraryEntrySortEnum.fromJson(String value) =>
      fromJson$Enum$LibraryEntrySortEnum(value);

  String toJson() => toJson$Enum$LibraryEntrySortEnum(this);
}

String toJson$Enum$LibraryEntrySortEnum(Enum$LibraryEntrySortEnum e) {
  switch (e) {
    case Enum$LibraryEntrySortEnum.MEDIA_TYPE:
      return r'MEDIA_TYPE';
    case Enum$LibraryEntrySortEnum.STATUS:
      return r'STATUS';
    case Enum$LibraryEntrySortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$LibraryEntrySortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$LibraryEntrySortEnum.PROGRESS:
      return r'PROGRESS';
    case Enum$LibraryEntrySortEnum.RATING:
      return r'RATING';
    case Enum$LibraryEntrySortEnum.STARTED_AT:
      return r'STARTED_AT';
    case Enum$LibraryEntrySortEnum.FINISHED_AT:
      return r'FINISHED_AT';
    case Enum$LibraryEntrySortEnum.TITLE:
      return r'TITLE';
    case Enum$LibraryEntrySortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LibraryEntrySortEnum fromJson$Enum$LibraryEntrySortEnum(String value) {
  switch (value) {
    case r'MEDIA_TYPE':
      return Enum$LibraryEntrySortEnum.MEDIA_TYPE;
    case r'STATUS':
      return Enum$LibraryEntrySortEnum.STATUS;
    case r'CREATED_AT':
      return Enum$LibraryEntrySortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$LibraryEntrySortEnum.UPDATED_AT;
    case r'PROGRESS':
      return Enum$LibraryEntrySortEnum.PROGRESS;
    case r'RATING':
      return Enum$LibraryEntrySortEnum.RATING;
    case r'STARTED_AT':
      return Enum$LibraryEntrySortEnum.STARTED_AT;
    case r'FINISHED_AT':
      return Enum$LibraryEntrySortEnum.FINISHED_AT;
    case r'TITLE':
      return Enum$LibraryEntrySortEnum.TITLE;
    default:
      return Enum$LibraryEntrySortEnum.$unknown;
  }
}

enum Enum$LibraryEntryStatusEnum {
  CURRENT,
  PLANNED,
  COMPLETED,
  ON_HOLD,
  DROPPED,
  $unknown;

  factory Enum$LibraryEntryStatusEnum.fromJson(String value) =>
      fromJson$Enum$LibraryEntryStatusEnum(value);

  String toJson() => toJson$Enum$LibraryEntryStatusEnum(this);
}

String toJson$Enum$LibraryEntryStatusEnum(Enum$LibraryEntryStatusEnum e) {
  switch (e) {
    case Enum$LibraryEntryStatusEnum.CURRENT:
      return r'CURRENT';
    case Enum$LibraryEntryStatusEnum.PLANNED:
      return r'PLANNED';
    case Enum$LibraryEntryStatusEnum.COMPLETED:
      return r'COMPLETED';
    case Enum$LibraryEntryStatusEnum.ON_HOLD:
      return r'ON_HOLD';
    case Enum$LibraryEntryStatusEnum.DROPPED:
      return r'DROPPED';
    case Enum$LibraryEntryStatusEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LibraryEntryStatusEnum fromJson$Enum$LibraryEntryStatusEnum(String value) {
  switch (value) {
    case r'CURRENT':
      return Enum$LibraryEntryStatusEnum.CURRENT;
    case r'PLANNED':
      return Enum$LibraryEntryStatusEnum.PLANNED;
    case r'COMPLETED':
      return Enum$LibraryEntryStatusEnum.COMPLETED;
    case r'ON_HOLD':
      return Enum$LibraryEntryStatusEnum.ON_HOLD;
    case r'DROPPED':
      return Enum$LibraryEntryStatusEnum.DROPPED;
    default:
      return Enum$LibraryEntryStatusEnum.$unknown;
  }
}

enum Enum$LibraryEventKindEnum {
  PROGRESSED,
  UPDATED,
  REACTED,
  RATED,
  ANNOTATED,
  $unknown;

  factory Enum$LibraryEventKindEnum.fromJson(String value) =>
      fromJson$Enum$LibraryEventKindEnum(value);

  String toJson() => toJson$Enum$LibraryEventKindEnum(this);
}

String toJson$Enum$LibraryEventKindEnum(Enum$LibraryEventKindEnum e) {
  switch (e) {
    case Enum$LibraryEventKindEnum.PROGRESSED:
      return r'PROGRESSED';
    case Enum$LibraryEventKindEnum.UPDATED:
      return r'UPDATED';
    case Enum$LibraryEventKindEnum.REACTED:
      return r'REACTED';
    case Enum$LibraryEventKindEnum.RATED:
      return r'RATED';
    case Enum$LibraryEventKindEnum.ANNOTATED:
      return r'ANNOTATED';
    case Enum$LibraryEventKindEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LibraryEventKindEnum fromJson$Enum$LibraryEventKindEnum(String value) {
  switch (value) {
    case r'PROGRESSED':
      return Enum$LibraryEventKindEnum.PROGRESSED;
    case r'UPDATED':
      return Enum$LibraryEventKindEnum.UPDATED;
    case r'REACTED':
      return Enum$LibraryEventKindEnum.REACTED;
    case r'RATED':
      return Enum$LibraryEventKindEnum.RATED;
    case r'ANNOTATED':
      return Enum$LibraryEventKindEnum.ANNOTATED;
    default:
      return Enum$LibraryEventKindEnum.$unknown;
  }
}

enum Enum$LibraryEventSortEnum {
  CREATED_AT,
  UPDATED_AT,
  $unknown;

  factory Enum$LibraryEventSortEnum.fromJson(String value) =>
      fromJson$Enum$LibraryEventSortEnum(value);

  String toJson() => toJson$Enum$LibraryEventSortEnum(this);
}

String toJson$Enum$LibraryEventSortEnum(Enum$LibraryEventSortEnum e) {
  switch (e) {
    case Enum$LibraryEventSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$LibraryEventSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$LibraryEventSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LibraryEventSortEnum fromJson$Enum$LibraryEventSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$LibraryEventSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$LibraryEventSortEnum.UPDATED_AT;
    default:
      return Enum$LibraryEventSortEnum.$unknown;
  }
}

enum Enum$LockedReasonEnum {
  SPAM,
  TOO_HEATED,
  CLOSED,
  $unknown;

  factory Enum$LockedReasonEnum.fromJson(String value) =>
      fromJson$Enum$LockedReasonEnum(value);

  String toJson() => toJson$Enum$LockedReasonEnum(this);
}

String toJson$Enum$LockedReasonEnum(Enum$LockedReasonEnum e) {
  switch (e) {
    case Enum$LockedReasonEnum.SPAM:
      return r'SPAM';
    case Enum$LockedReasonEnum.TOO_HEATED:
      return r'TOO_HEATED';
    case Enum$LockedReasonEnum.CLOSED:
      return r'CLOSED';
    case Enum$LockedReasonEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LockedReasonEnum fromJson$Enum$LockedReasonEnum(String value) {
  switch (value) {
    case r'SPAM':
      return Enum$LockedReasonEnum.SPAM;
    case r'TOO_HEATED':
      return Enum$LockedReasonEnum.TOO_HEATED;
    case r'CLOSED':
      return Enum$LockedReasonEnum.CLOSED;
    default:
      return Enum$LockedReasonEnum.$unknown;
  }
}

enum Enum$MangaSubtypeEnum {
  MANGA,
  NOVEL,
  MANHUA,
  ONESHOT,
  DOUJIN,
  MANHWA,
  OEL,
  $unknown;

  factory Enum$MangaSubtypeEnum.fromJson(String value) =>
      fromJson$Enum$MangaSubtypeEnum(value);

  String toJson() => toJson$Enum$MangaSubtypeEnum(this);
}

String toJson$Enum$MangaSubtypeEnum(Enum$MangaSubtypeEnum e) {
  switch (e) {
    case Enum$MangaSubtypeEnum.MANGA:
      return r'MANGA';
    case Enum$MangaSubtypeEnum.NOVEL:
      return r'NOVEL';
    case Enum$MangaSubtypeEnum.MANHUA:
      return r'MANHUA';
    case Enum$MangaSubtypeEnum.ONESHOT:
      return r'ONESHOT';
    case Enum$MangaSubtypeEnum.DOUJIN:
      return r'DOUJIN';
    case Enum$MangaSubtypeEnum.MANHWA:
      return r'MANHWA';
    case Enum$MangaSubtypeEnum.OEL:
      return r'OEL';
    case Enum$MangaSubtypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MangaSubtypeEnum fromJson$Enum$MangaSubtypeEnum(String value) {
  switch (value) {
    case r'MANGA':
      return Enum$MangaSubtypeEnum.MANGA;
    case r'NOVEL':
      return Enum$MangaSubtypeEnum.NOVEL;
    case r'MANHUA':
      return Enum$MangaSubtypeEnum.MANHUA;
    case r'ONESHOT':
      return Enum$MangaSubtypeEnum.ONESHOT;
    case r'DOUJIN':
      return Enum$MangaSubtypeEnum.DOUJIN;
    case r'MANHWA':
      return Enum$MangaSubtypeEnum.MANHWA;
    case r'OEL':
      return Enum$MangaSubtypeEnum.OEL;
    default:
      return Enum$MangaSubtypeEnum.$unknown;
  }
}

enum Enum$MappingExternalSiteEnum {
  MYANIMELIST_ANIME,
  MYANIMELIST_MANGA,
  MYANIMELIST_CHARACTERS,
  MYANIMELIST_PEOPLE,
  MYANIMELIST_PRODUCERS,
  ANILIST_ANIME,
  ANILIST_MANGA,
  THETVDB,
  THETVDB_SERIES,
  THETVDB_SEASON,
  ANIDB,
  ANIMENEWSNETWORK,
  MANGAUPDATES,
  HULU,
  IMDB_EPISODES,
  AOZORA,
  TRAKT,
  MYDRAMALIST,
  $unknown;

  factory Enum$MappingExternalSiteEnum.fromJson(String value) =>
      fromJson$Enum$MappingExternalSiteEnum(value);

  String toJson() => toJson$Enum$MappingExternalSiteEnum(this);
}

String toJson$Enum$MappingExternalSiteEnum(Enum$MappingExternalSiteEnum e) {
  switch (e) {
    case Enum$MappingExternalSiteEnum.MYANIMELIST_ANIME:
      return r'MYANIMELIST_ANIME';
    case Enum$MappingExternalSiteEnum.MYANIMELIST_MANGA:
      return r'MYANIMELIST_MANGA';
    case Enum$MappingExternalSiteEnum.MYANIMELIST_CHARACTERS:
      return r'MYANIMELIST_CHARACTERS';
    case Enum$MappingExternalSiteEnum.MYANIMELIST_PEOPLE:
      return r'MYANIMELIST_PEOPLE';
    case Enum$MappingExternalSiteEnum.MYANIMELIST_PRODUCERS:
      return r'MYANIMELIST_PRODUCERS';
    case Enum$MappingExternalSiteEnum.ANILIST_ANIME:
      return r'ANILIST_ANIME';
    case Enum$MappingExternalSiteEnum.ANILIST_MANGA:
      return r'ANILIST_MANGA';
    case Enum$MappingExternalSiteEnum.THETVDB:
      return r'THETVDB';
    case Enum$MappingExternalSiteEnum.THETVDB_SERIES:
      return r'THETVDB_SERIES';
    case Enum$MappingExternalSiteEnum.THETVDB_SEASON:
      return r'THETVDB_SEASON';
    case Enum$MappingExternalSiteEnum.ANIDB:
      return r'ANIDB';
    case Enum$MappingExternalSiteEnum.ANIMENEWSNETWORK:
      return r'ANIMENEWSNETWORK';
    case Enum$MappingExternalSiteEnum.MANGAUPDATES:
      return r'MANGAUPDATES';
    case Enum$MappingExternalSiteEnum.HULU:
      return r'HULU';
    case Enum$MappingExternalSiteEnum.IMDB_EPISODES:
      return r'IMDB_EPISODES';
    case Enum$MappingExternalSiteEnum.AOZORA:
      return r'AOZORA';
    case Enum$MappingExternalSiteEnum.TRAKT:
      return r'TRAKT';
    case Enum$MappingExternalSiteEnum.MYDRAMALIST:
      return r'MYDRAMALIST';
    case Enum$MappingExternalSiteEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MappingExternalSiteEnum fromJson$Enum$MappingExternalSiteEnum(
  String value,
) {
  switch (value) {
    case r'MYANIMELIST_ANIME':
      return Enum$MappingExternalSiteEnum.MYANIMELIST_ANIME;
    case r'MYANIMELIST_MANGA':
      return Enum$MappingExternalSiteEnum.MYANIMELIST_MANGA;
    case r'MYANIMELIST_CHARACTERS':
      return Enum$MappingExternalSiteEnum.MYANIMELIST_CHARACTERS;
    case r'MYANIMELIST_PEOPLE':
      return Enum$MappingExternalSiteEnum.MYANIMELIST_PEOPLE;
    case r'MYANIMELIST_PRODUCERS':
      return Enum$MappingExternalSiteEnum.MYANIMELIST_PRODUCERS;
    case r'ANILIST_ANIME':
      return Enum$MappingExternalSiteEnum.ANILIST_ANIME;
    case r'ANILIST_MANGA':
      return Enum$MappingExternalSiteEnum.ANILIST_MANGA;
    case r'THETVDB':
      return Enum$MappingExternalSiteEnum.THETVDB;
    case r'THETVDB_SERIES':
      return Enum$MappingExternalSiteEnum.THETVDB_SERIES;
    case r'THETVDB_SEASON':
      return Enum$MappingExternalSiteEnum.THETVDB_SEASON;
    case r'ANIDB':
      return Enum$MappingExternalSiteEnum.ANIDB;
    case r'ANIMENEWSNETWORK':
      return Enum$MappingExternalSiteEnum.ANIMENEWSNETWORK;
    case r'MANGAUPDATES':
      return Enum$MappingExternalSiteEnum.MANGAUPDATES;
    case r'HULU':
      return Enum$MappingExternalSiteEnum.HULU;
    case r'IMDB_EPISODES':
      return Enum$MappingExternalSiteEnum.IMDB_EPISODES;
    case r'AOZORA':
      return Enum$MappingExternalSiteEnum.AOZORA;
    case r'TRAKT':
      return Enum$MappingExternalSiteEnum.TRAKT;
    case r'MYDRAMALIST':
      return Enum$MappingExternalSiteEnum.MYDRAMALIST;
    default:
      return Enum$MappingExternalSiteEnum.$unknown;
  }
}

enum Enum$MappingItemEnum {
  ANIME,
  MANGA,
  CATEGORY,
  CHARACTER,
  EPISODE,
  PERSON,
  PRODUCER,
  $unknown;

  factory Enum$MappingItemEnum.fromJson(String value) =>
      fromJson$Enum$MappingItemEnum(value);

  String toJson() => toJson$Enum$MappingItemEnum(this);
}

String toJson$Enum$MappingItemEnum(Enum$MappingItemEnum e) {
  switch (e) {
    case Enum$MappingItemEnum.ANIME:
      return r'ANIME';
    case Enum$MappingItemEnum.MANGA:
      return r'MANGA';
    case Enum$MappingItemEnum.CATEGORY:
      return r'CATEGORY';
    case Enum$MappingItemEnum.CHARACTER:
      return r'CHARACTER';
    case Enum$MappingItemEnum.EPISODE:
      return r'EPISODE';
    case Enum$MappingItemEnum.PERSON:
      return r'PERSON';
    case Enum$MappingItemEnum.PRODUCER:
      return r'PRODUCER';
    case Enum$MappingItemEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MappingItemEnum fromJson$Enum$MappingItemEnum(String value) {
  switch (value) {
    case r'ANIME':
      return Enum$MappingItemEnum.ANIME;
    case r'MANGA':
      return Enum$MappingItemEnum.MANGA;
    case r'CATEGORY':
      return Enum$MappingItemEnum.CATEGORY;
    case r'CHARACTER':
      return Enum$MappingItemEnum.CHARACTER;
    case r'EPISODE':
      return Enum$MappingItemEnum.EPISODE;
    case r'PERSON':
      return Enum$MappingItemEnum.PERSON;
    case r'PRODUCER':
      return Enum$MappingItemEnum.PRODUCER;
    default:
      return Enum$MappingItemEnum.$unknown;
  }
}

enum Enum$MediaCategorySortEnum {
  ANCESTRY,
  CREATED_AT,
  $unknown;

  factory Enum$MediaCategorySortEnum.fromJson(String value) =>
      fromJson$Enum$MediaCategorySortEnum(value);

  String toJson() => toJson$Enum$MediaCategorySortEnum(this);
}

String toJson$Enum$MediaCategorySortEnum(Enum$MediaCategorySortEnum e) {
  switch (e) {
    case Enum$MediaCategorySortEnum.ANCESTRY:
      return r'ANCESTRY';
    case Enum$MediaCategorySortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$MediaCategorySortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MediaCategorySortEnum fromJson$Enum$MediaCategorySortEnum(String value) {
  switch (value) {
    case r'ANCESTRY':
      return Enum$MediaCategorySortEnum.ANCESTRY;
    case r'CREATED_AT':
      return Enum$MediaCategorySortEnum.CREATED_AT;
    default:
      return Enum$MediaCategorySortEnum.$unknown;
  }
}

enum Enum$MediaCharacterSortEnum {
  CREATED_AT,
  UPDATED_AT,
  ROLE,
  $unknown;

  factory Enum$MediaCharacterSortEnum.fromJson(String value) =>
      fromJson$Enum$MediaCharacterSortEnum(value);

  String toJson() => toJson$Enum$MediaCharacterSortEnum(this);
}

String toJson$Enum$MediaCharacterSortEnum(Enum$MediaCharacterSortEnum e) {
  switch (e) {
    case Enum$MediaCharacterSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$MediaCharacterSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$MediaCharacterSortEnum.ROLE:
      return r'ROLE';
    case Enum$MediaCharacterSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MediaCharacterSortEnum fromJson$Enum$MediaCharacterSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$MediaCharacterSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$MediaCharacterSortEnum.UPDATED_AT;
    case r'ROLE':
      return Enum$MediaCharacterSortEnum.ROLE;
    default:
      return Enum$MediaCharacterSortEnum.$unknown;
  }
}

enum Enum$MediaProductionRoleEnum {
  PRODUCER,
  LICENSOR,
  STUDIO,
  SERIALIZATION,
  $unknown;

  factory Enum$MediaProductionRoleEnum.fromJson(String value) =>
      fromJson$Enum$MediaProductionRoleEnum(value);

  String toJson() => toJson$Enum$MediaProductionRoleEnum(this);
}

String toJson$Enum$MediaProductionRoleEnum(Enum$MediaProductionRoleEnum e) {
  switch (e) {
    case Enum$MediaProductionRoleEnum.PRODUCER:
      return r'PRODUCER';
    case Enum$MediaProductionRoleEnum.LICENSOR:
      return r'LICENSOR';
    case Enum$MediaProductionRoleEnum.STUDIO:
      return r'STUDIO';
    case Enum$MediaProductionRoleEnum.SERIALIZATION:
      return r'SERIALIZATION';
    case Enum$MediaProductionRoleEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MediaProductionRoleEnum fromJson$Enum$MediaProductionRoleEnum(
  String value,
) {
  switch (value) {
    case r'PRODUCER':
      return Enum$MediaProductionRoleEnum.PRODUCER;
    case r'LICENSOR':
      return Enum$MediaProductionRoleEnum.LICENSOR;
    case r'STUDIO':
      return Enum$MediaProductionRoleEnum.STUDIO;
    case r'SERIALIZATION':
      return Enum$MediaProductionRoleEnum.SERIALIZATION;
    default:
      return Enum$MediaProductionRoleEnum.$unknown;
  }
}

enum Enum$MediaReactionSortEnum {
  CREATED_AT,
  UPDATED_AT,
  UP_VOTES_COUNT,
  $unknown;

  factory Enum$MediaReactionSortEnum.fromJson(String value) =>
      fromJson$Enum$MediaReactionSortEnum(value);

  String toJson() => toJson$Enum$MediaReactionSortEnum(this);
}

String toJson$Enum$MediaReactionSortEnum(Enum$MediaReactionSortEnum e) {
  switch (e) {
    case Enum$MediaReactionSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$MediaReactionSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$MediaReactionSortEnum.UP_VOTES_COUNT:
      return r'UP_VOTES_COUNT';
    case Enum$MediaReactionSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MediaReactionSortEnum fromJson$Enum$MediaReactionSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$MediaReactionSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$MediaReactionSortEnum.UPDATED_AT;
    case r'UP_VOTES_COUNT':
      return Enum$MediaReactionSortEnum.UP_VOTES_COUNT;
    default:
      return Enum$MediaReactionSortEnum.$unknown;
  }
}

enum Enum$MediaReactionVoteSortEnum {
  CREATED_AT,
  FOLLOWING,
  $unknown;

  factory Enum$MediaReactionVoteSortEnum.fromJson(String value) =>
      fromJson$Enum$MediaReactionVoteSortEnum(value);

  String toJson() => toJson$Enum$MediaReactionVoteSortEnum(this);
}

String toJson$Enum$MediaReactionVoteSortEnum(Enum$MediaReactionVoteSortEnum e) {
  switch (e) {
    case Enum$MediaReactionVoteSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$MediaReactionVoteSortEnum.FOLLOWING:
      return r'FOLLOWING';
    case Enum$MediaReactionVoteSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MediaReactionVoteSortEnum fromJson$Enum$MediaReactionVoteSortEnum(
  String value,
) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$MediaReactionVoteSortEnum.CREATED_AT;
    case r'FOLLOWING':
      return Enum$MediaReactionVoteSortEnum.FOLLOWING;
    default:
      return Enum$MediaReactionVoteSortEnum.$unknown;
  }
}

enum Enum$MediaRelationshipKindEnum {
  SEQUEL,
  PREQUEL,
  ALTERNATIVE_SETTING,
  ALTERNATIVE_VERSION,
  SIDE_STORY,
  PARENT_STORY,
  SUMMARY,
  FULL_STORY,
  SPINOFF,
  ADAPTATION,
  CHARACTER,
  OTHER,
  $unknown;

  factory Enum$MediaRelationshipKindEnum.fromJson(String value) =>
      fromJson$Enum$MediaRelationshipKindEnum(value);

  String toJson() => toJson$Enum$MediaRelationshipKindEnum(this);
}

String toJson$Enum$MediaRelationshipKindEnum(Enum$MediaRelationshipKindEnum e) {
  switch (e) {
    case Enum$MediaRelationshipKindEnum.SEQUEL:
      return r'SEQUEL';
    case Enum$MediaRelationshipKindEnum.PREQUEL:
      return r'PREQUEL';
    case Enum$MediaRelationshipKindEnum.ALTERNATIVE_SETTING:
      return r'ALTERNATIVE_SETTING';
    case Enum$MediaRelationshipKindEnum.ALTERNATIVE_VERSION:
      return r'ALTERNATIVE_VERSION';
    case Enum$MediaRelationshipKindEnum.SIDE_STORY:
      return r'SIDE_STORY';
    case Enum$MediaRelationshipKindEnum.PARENT_STORY:
      return r'PARENT_STORY';
    case Enum$MediaRelationshipKindEnum.SUMMARY:
      return r'SUMMARY';
    case Enum$MediaRelationshipKindEnum.FULL_STORY:
      return r'FULL_STORY';
    case Enum$MediaRelationshipKindEnum.SPINOFF:
      return r'SPINOFF';
    case Enum$MediaRelationshipKindEnum.ADAPTATION:
      return r'ADAPTATION';
    case Enum$MediaRelationshipKindEnum.CHARACTER:
      return r'CHARACTER';
    case Enum$MediaRelationshipKindEnum.OTHER:
      return r'OTHER';
    case Enum$MediaRelationshipKindEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MediaRelationshipKindEnum fromJson$Enum$MediaRelationshipKindEnum(
  String value,
) {
  switch (value) {
    case r'SEQUEL':
      return Enum$MediaRelationshipKindEnum.SEQUEL;
    case r'PREQUEL':
      return Enum$MediaRelationshipKindEnum.PREQUEL;
    case r'ALTERNATIVE_SETTING':
      return Enum$MediaRelationshipKindEnum.ALTERNATIVE_SETTING;
    case r'ALTERNATIVE_VERSION':
      return Enum$MediaRelationshipKindEnum.ALTERNATIVE_VERSION;
    case r'SIDE_STORY':
      return Enum$MediaRelationshipKindEnum.SIDE_STORY;
    case r'PARENT_STORY':
      return Enum$MediaRelationshipKindEnum.PARENT_STORY;
    case r'SUMMARY':
      return Enum$MediaRelationshipKindEnum.SUMMARY;
    case r'FULL_STORY':
      return Enum$MediaRelationshipKindEnum.FULL_STORY;
    case r'SPINOFF':
      return Enum$MediaRelationshipKindEnum.SPINOFF;
    case r'ADAPTATION':
      return Enum$MediaRelationshipKindEnum.ADAPTATION;
    case r'CHARACTER':
      return Enum$MediaRelationshipKindEnum.CHARACTER;
    case r'OTHER':
      return Enum$MediaRelationshipKindEnum.OTHER;
    default:
      return Enum$MediaRelationshipKindEnum.$unknown;
  }
}

enum Enum$MediaTypeEnum {
  ANIME,
  MANGA,
  $unknown;

  factory Enum$MediaTypeEnum.fromJson(String value) =>
      fromJson$Enum$MediaTypeEnum(value);

  String toJson() => toJson$Enum$MediaTypeEnum(this);
}

String toJson$Enum$MediaTypeEnum(Enum$MediaTypeEnum e) {
  switch (e) {
    case Enum$MediaTypeEnum.ANIME:
      return r'ANIME';
    case Enum$MediaTypeEnum.MANGA:
      return r'MANGA';
    case Enum$MediaTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$MediaTypeEnum fromJson$Enum$MediaTypeEnum(String value) {
  switch (value) {
    case r'ANIME':
      return Enum$MediaTypeEnum.ANIME;
    case r'MANGA':
      return Enum$MediaTypeEnum.MANGA;
    default:
      return Enum$MediaTypeEnum.$unknown;
  }
}

enum Enum$PostLikeSortEnum {
  FOLLOWING,
  CREATED_AT,
  $unknown;

  factory Enum$PostLikeSortEnum.fromJson(String value) =>
      fromJson$Enum$PostLikeSortEnum(value);

  String toJson() => toJson$Enum$PostLikeSortEnum(this);
}

String toJson$Enum$PostLikeSortEnum(Enum$PostLikeSortEnum e) {
  switch (e) {
    case Enum$PostLikeSortEnum.FOLLOWING:
      return r'FOLLOWING';
    case Enum$PostLikeSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$PostLikeSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$PostLikeSortEnum fromJson$Enum$PostLikeSortEnum(String value) {
  switch (value) {
    case r'FOLLOWING':
      return Enum$PostLikeSortEnum.FOLLOWING;
    case r'CREATED_AT':
      return Enum$PostLikeSortEnum.CREATED_AT;
    default:
      return Enum$PostLikeSortEnum.$unknown;
  }
}

enum Enum$PostSortEnum {
  CREATED_AT,
  $unknown;

  factory Enum$PostSortEnum.fromJson(String value) =>
      fromJson$Enum$PostSortEnum(value);

  String toJson() => toJson$Enum$PostSortEnum(this);
}

String toJson$Enum$PostSortEnum(Enum$PostSortEnum e) {
  switch (e) {
    case Enum$PostSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$PostSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$PostSortEnum fromJson$Enum$PostSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$PostSortEnum.CREATED_AT;
    default:
      return Enum$PostSortEnum.$unknown;
  }
}

enum Enum$ProfileLinksSitesEnum {
  TWITTER,
  FACEBOOK,
  YOUTUBE,
  GOOGLE,
  INSTAGRAM,
  TWITCH,
  VIMEO,
  GITHUB,
  BATTLENET,
  STEAM,
  RAPTR,
  DISCORD,
  TUMBLR,
  SOUNDCLOUD,
  DAILYMOTION,
  KICKSTARTER,
  MOBCRUSH,
  OSU,
  PATREON,
  DEVIANTART,
  DRIBBBLE,
  IMDB,
  LASTFM,
  LETTERBOXD,
  MEDIUM,
  PLAYERME,
  REDDIT,
  TRAKT,
  WEBSITE,
  $unknown;

  factory Enum$ProfileLinksSitesEnum.fromJson(String value) =>
      fromJson$Enum$ProfileLinksSitesEnum(value);

  String toJson() => toJson$Enum$ProfileLinksSitesEnum(this);
}

String toJson$Enum$ProfileLinksSitesEnum(Enum$ProfileLinksSitesEnum e) {
  switch (e) {
    case Enum$ProfileLinksSitesEnum.TWITTER:
      return r'TWITTER';
    case Enum$ProfileLinksSitesEnum.FACEBOOK:
      return r'FACEBOOK';
    case Enum$ProfileLinksSitesEnum.YOUTUBE:
      return r'YOUTUBE';
    case Enum$ProfileLinksSitesEnum.GOOGLE:
      return r'GOOGLE';
    case Enum$ProfileLinksSitesEnum.INSTAGRAM:
      return r'INSTAGRAM';
    case Enum$ProfileLinksSitesEnum.TWITCH:
      return r'TWITCH';
    case Enum$ProfileLinksSitesEnum.VIMEO:
      return r'VIMEO';
    case Enum$ProfileLinksSitesEnum.GITHUB:
      return r'GITHUB';
    case Enum$ProfileLinksSitesEnum.BATTLENET:
      return r'BATTLENET';
    case Enum$ProfileLinksSitesEnum.STEAM:
      return r'STEAM';
    case Enum$ProfileLinksSitesEnum.RAPTR:
      return r'RAPTR';
    case Enum$ProfileLinksSitesEnum.DISCORD:
      return r'DISCORD';
    case Enum$ProfileLinksSitesEnum.TUMBLR:
      return r'TUMBLR';
    case Enum$ProfileLinksSitesEnum.SOUNDCLOUD:
      return r'SOUNDCLOUD';
    case Enum$ProfileLinksSitesEnum.DAILYMOTION:
      return r'DAILYMOTION';
    case Enum$ProfileLinksSitesEnum.KICKSTARTER:
      return r'KICKSTARTER';
    case Enum$ProfileLinksSitesEnum.MOBCRUSH:
      return r'MOBCRUSH';
    case Enum$ProfileLinksSitesEnum.OSU:
      return r'OSU';
    case Enum$ProfileLinksSitesEnum.PATREON:
      return r'PATREON';
    case Enum$ProfileLinksSitesEnum.DEVIANTART:
      return r'DEVIANTART';
    case Enum$ProfileLinksSitesEnum.DRIBBBLE:
      return r'DRIBBBLE';
    case Enum$ProfileLinksSitesEnum.IMDB:
      return r'IMDB';
    case Enum$ProfileLinksSitesEnum.LASTFM:
      return r'LASTFM';
    case Enum$ProfileLinksSitesEnum.LETTERBOXD:
      return r'LETTERBOXD';
    case Enum$ProfileLinksSitesEnum.MEDIUM:
      return r'MEDIUM';
    case Enum$ProfileLinksSitesEnum.PLAYERME:
      return r'PLAYERME';
    case Enum$ProfileLinksSitesEnum.REDDIT:
      return r'REDDIT';
    case Enum$ProfileLinksSitesEnum.TRAKT:
      return r'TRAKT';
    case Enum$ProfileLinksSitesEnum.WEBSITE:
      return r'WEBSITE';
    case Enum$ProfileLinksSitesEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ProfileLinksSitesEnum fromJson$Enum$ProfileLinksSitesEnum(String value) {
  switch (value) {
    case r'TWITTER':
      return Enum$ProfileLinksSitesEnum.TWITTER;
    case r'FACEBOOK':
      return Enum$ProfileLinksSitesEnum.FACEBOOK;
    case r'YOUTUBE':
      return Enum$ProfileLinksSitesEnum.YOUTUBE;
    case r'GOOGLE':
      return Enum$ProfileLinksSitesEnum.GOOGLE;
    case r'INSTAGRAM':
      return Enum$ProfileLinksSitesEnum.INSTAGRAM;
    case r'TWITCH':
      return Enum$ProfileLinksSitesEnum.TWITCH;
    case r'VIMEO':
      return Enum$ProfileLinksSitesEnum.VIMEO;
    case r'GITHUB':
      return Enum$ProfileLinksSitesEnum.GITHUB;
    case r'BATTLENET':
      return Enum$ProfileLinksSitesEnum.BATTLENET;
    case r'STEAM':
      return Enum$ProfileLinksSitesEnum.STEAM;
    case r'RAPTR':
      return Enum$ProfileLinksSitesEnum.RAPTR;
    case r'DISCORD':
      return Enum$ProfileLinksSitesEnum.DISCORD;
    case r'TUMBLR':
      return Enum$ProfileLinksSitesEnum.TUMBLR;
    case r'SOUNDCLOUD':
      return Enum$ProfileLinksSitesEnum.SOUNDCLOUD;
    case r'DAILYMOTION':
      return Enum$ProfileLinksSitesEnum.DAILYMOTION;
    case r'KICKSTARTER':
      return Enum$ProfileLinksSitesEnum.KICKSTARTER;
    case r'MOBCRUSH':
      return Enum$ProfileLinksSitesEnum.MOBCRUSH;
    case r'OSU':
      return Enum$ProfileLinksSitesEnum.OSU;
    case r'PATREON':
      return Enum$ProfileLinksSitesEnum.PATREON;
    case r'DEVIANTART':
      return Enum$ProfileLinksSitesEnum.DEVIANTART;
    case r'DRIBBBLE':
      return Enum$ProfileLinksSitesEnum.DRIBBBLE;
    case r'IMDB':
      return Enum$ProfileLinksSitesEnum.IMDB;
    case r'LASTFM':
      return Enum$ProfileLinksSitesEnum.LASTFM;
    case r'LETTERBOXD':
      return Enum$ProfileLinksSitesEnum.LETTERBOXD;
    case r'MEDIUM':
      return Enum$ProfileLinksSitesEnum.MEDIUM;
    case r'PLAYERME':
      return Enum$ProfileLinksSitesEnum.PLAYERME;
    case r'REDDIT':
      return Enum$ProfileLinksSitesEnum.REDDIT;
    case r'TRAKT':
      return Enum$ProfileLinksSitesEnum.TRAKT;
    case r'WEBSITE':
      return Enum$ProfileLinksSitesEnum.WEBSITE;
    default:
      return Enum$ProfileLinksSitesEnum.$unknown;
  }
}

enum Enum$ProTierEnum {
  @Deprecated('No longer for sale')
  AO_PRO,
  @Deprecated('No longer for sale')
  AO_PRO_PLUS,
  PRO,
  PATRON,
  $unknown;

  factory Enum$ProTierEnum.fromJson(String value) =>
      fromJson$Enum$ProTierEnum(value);

  String toJson() => toJson$Enum$ProTierEnum(this);
}

String toJson$Enum$ProTierEnum(Enum$ProTierEnum e) {
  switch (e) {
    case Enum$ProTierEnum.AO_PRO:
      return r'AO_PRO';
    case Enum$ProTierEnum.AO_PRO_PLUS:
      return r'AO_PRO_PLUS';
    case Enum$ProTierEnum.PRO:
      return r'PRO';
    case Enum$ProTierEnum.PATRON:
      return r'PATRON';
    case Enum$ProTierEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ProTierEnum fromJson$Enum$ProTierEnum(String value) {
  switch (value) {
    case r'AO_PRO':
      return Enum$ProTierEnum.AO_PRO;
    case r'AO_PRO_PLUS':
      return Enum$ProTierEnum.AO_PRO_PLUS;
    case r'PRO':
      return Enum$ProTierEnum.PRO;
    case r'PATRON':
      return Enum$ProTierEnum.PATRON;
    default:
      return Enum$ProTierEnum.$unknown;
  }
}

enum Enum$RatingSystemEnum {
  SIMPLE,
  REGULAR,
  ADVANCED,
  $unknown;

  factory Enum$RatingSystemEnum.fromJson(String value) =>
      fromJson$Enum$RatingSystemEnum(value);

  String toJson() => toJson$Enum$RatingSystemEnum(this);
}

String toJson$Enum$RatingSystemEnum(Enum$RatingSystemEnum e) {
  switch (e) {
    case Enum$RatingSystemEnum.SIMPLE:
      return r'SIMPLE';
    case Enum$RatingSystemEnum.REGULAR:
      return r'REGULAR';
    case Enum$RatingSystemEnum.ADVANCED:
      return r'ADVANCED';
    case Enum$RatingSystemEnum.$unknown:
      return r'$unknown';
  }
}

Enum$RatingSystemEnum fromJson$Enum$RatingSystemEnum(String value) {
  switch (value) {
    case r'SIMPLE':
      return Enum$RatingSystemEnum.SIMPLE;
    case r'REGULAR':
      return Enum$RatingSystemEnum.REGULAR;
    case r'ADVANCED':
      return Enum$RatingSystemEnum.ADVANCED;
    default:
      return Enum$RatingSystemEnum.$unknown;
  }
}

enum Enum$RecurringBillingServiceEnum {
  STRIPE,
  PAYPAL,
  APPLE,
  GOOGLE_PLAY,
  $unknown;

  factory Enum$RecurringBillingServiceEnum.fromJson(String value) =>
      fromJson$Enum$RecurringBillingServiceEnum(value);

  String toJson() => toJson$Enum$RecurringBillingServiceEnum(this);
}

String toJson$Enum$RecurringBillingServiceEnum(
  Enum$RecurringBillingServiceEnum e,
) {
  switch (e) {
    case Enum$RecurringBillingServiceEnum.STRIPE:
      return r'STRIPE';
    case Enum$RecurringBillingServiceEnum.PAYPAL:
      return r'PAYPAL';
    case Enum$RecurringBillingServiceEnum.APPLE:
      return r'APPLE';
    case Enum$RecurringBillingServiceEnum.GOOGLE_PLAY:
      return r'GOOGLE_PLAY';
    case Enum$RecurringBillingServiceEnum.$unknown:
      return r'$unknown';
  }
}

Enum$RecurringBillingServiceEnum fromJson$Enum$RecurringBillingServiceEnum(
  String value,
) {
  switch (value) {
    case r'STRIPE':
      return Enum$RecurringBillingServiceEnum.STRIPE;
    case r'PAYPAL':
      return Enum$RecurringBillingServiceEnum.PAYPAL;
    case r'APPLE':
      return Enum$RecurringBillingServiceEnum.APPLE;
    case r'GOOGLE_PLAY':
      return Enum$RecurringBillingServiceEnum.GOOGLE_PLAY;
    default:
      return Enum$RecurringBillingServiceEnum.$unknown;
  }
}

enum Enum$ReleaseSeasonEnum {
  WINTER,
  SPRING,
  SUMMER,
  FALL,
  $unknown;

  factory Enum$ReleaseSeasonEnum.fromJson(String value) =>
      fromJson$Enum$ReleaseSeasonEnum(value);

  String toJson() => toJson$Enum$ReleaseSeasonEnum(this);
}

String toJson$Enum$ReleaseSeasonEnum(Enum$ReleaseSeasonEnum e) {
  switch (e) {
    case Enum$ReleaseSeasonEnum.WINTER:
      return r'WINTER';
    case Enum$ReleaseSeasonEnum.SPRING:
      return r'SPRING';
    case Enum$ReleaseSeasonEnum.SUMMER:
      return r'SUMMER';
    case Enum$ReleaseSeasonEnum.FALL:
      return r'FALL';
    case Enum$ReleaseSeasonEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ReleaseSeasonEnum fromJson$Enum$ReleaseSeasonEnum(String value) {
  switch (value) {
    case r'WINTER':
      return Enum$ReleaseSeasonEnum.WINTER;
    case r'SPRING':
      return Enum$ReleaseSeasonEnum.SPRING;
    case r'SUMMER':
      return Enum$ReleaseSeasonEnum.SUMMER;
    case r'FALL':
      return Enum$ReleaseSeasonEnum.FALL;
    default:
      return Enum$ReleaseSeasonEnum.$unknown;
  }
}

enum Enum$ReleaseStatusEnum {
  TBA,
  FINISHED,
  CURRENT,
  UPCOMING,
  UNRELEASED,
  $unknown;

  factory Enum$ReleaseStatusEnum.fromJson(String value) =>
      fromJson$Enum$ReleaseStatusEnum(value);

  String toJson() => toJson$Enum$ReleaseStatusEnum(this);
}

String toJson$Enum$ReleaseStatusEnum(Enum$ReleaseStatusEnum e) {
  switch (e) {
    case Enum$ReleaseStatusEnum.TBA:
      return r'TBA';
    case Enum$ReleaseStatusEnum.FINISHED:
      return r'FINISHED';
    case Enum$ReleaseStatusEnum.CURRENT:
      return r'CURRENT';
    case Enum$ReleaseStatusEnum.UPCOMING:
      return r'UPCOMING';
    case Enum$ReleaseStatusEnum.UNRELEASED:
      return r'UNRELEASED';
    case Enum$ReleaseStatusEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ReleaseStatusEnum fromJson$Enum$ReleaseStatusEnum(String value) {
  switch (value) {
    case r'TBA':
      return Enum$ReleaseStatusEnum.TBA;
    case r'FINISHED':
      return Enum$ReleaseStatusEnum.FINISHED;
    case r'CURRENT':
      return Enum$ReleaseStatusEnum.CURRENT;
    case r'UPCOMING':
      return Enum$ReleaseStatusEnum.UPCOMING;
    case r'UNRELEASED':
      return Enum$ReleaseStatusEnum.UNRELEASED;
    default:
      return Enum$ReleaseStatusEnum.$unknown;
  }
}

enum Enum$ReportReasonEnum {
  NSFW,
  OFFENSIVE,
  SPOILER,
  BULLYING,
  SPAM,
  OTHER,
  $unknown;

  factory Enum$ReportReasonEnum.fromJson(String value) =>
      fromJson$Enum$ReportReasonEnum(value);

  String toJson() => toJson$Enum$ReportReasonEnum(this);
}

String toJson$Enum$ReportReasonEnum(Enum$ReportReasonEnum e) {
  switch (e) {
    case Enum$ReportReasonEnum.NSFW:
      return r'NSFW';
    case Enum$ReportReasonEnum.OFFENSIVE:
      return r'OFFENSIVE';
    case Enum$ReportReasonEnum.SPOILER:
      return r'SPOILER';
    case Enum$ReportReasonEnum.BULLYING:
      return r'BULLYING';
    case Enum$ReportReasonEnum.SPAM:
      return r'SPAM';
    case Enum$ReportReasonEnum.OTHER:
      return r'OTHER';
    case Enum$ReportReasonEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ReportReasonEnum fromJson$Enum$ReportReasonEnum(String value) {
  switch (value) {
    case r'NSFW':
      return Enum$ReportReasonEnum.NSFW;
    case r'OFFENSIVE':
      return Enum$ReportReasonEnum.OFFENSIVE;
    case r'SPOILER':
      return Enum$ReportReasonEnum.SPOILER;
    case r'BULLYING':
      return Enum$ReportReasonEnum.BULLYING;
    case r'SPAM':
      return Enum$ReportReasonEnum.SPAM;
    case r'OTHER':
      return Enum$ReportReasonEnum.OTHER;
    default:
      return Enum$ReportReasonEnum.$unknown;
  }
}

enum Enum$ReportStatusEnum {
  REPORTED,
  RESOLVED,
  DECLINED,
  $unknown;

  factory Enum$ReportStatusEnum.fromJson(String value) =>
      fromJson$Enum$ReportStatusEnum(value);

  String toJson() => toJson$Enum$ReportStatusEnum(this);
}

String toJson$Enum$ReportStatusEnum(Enum$ReportStatusEnum e) {
  switch (e) {
    case Enum$ReportStatusEnum.REPORTED:
      return r'REPORTED';
    case Enum$ReportStatusEnum.RESOLVED:
      return r'RESOLVED';
    case Enum$ReportStatusEnum.DECLINED:
      return r'DECLINED';
    case Enum$ReportStatusEnum.$unknown:
      return r'$unknown';
  }
}

Enum$ReportStatusEnum fromJson$Enum$ReportStatusEnum(String value) {
  switch (value) {
    case r'REPORTED':
      return Enum$ReportStatusEnum.REPORTED;
    case r'RESOLVED':
      return Enum$ReportStatusEnum.RESOLVED;
    case r'DECLINED':
      return Enum$ReportStatusEnum.DECLINED;
    default:
      return Enum$ReportStatusEnum.$unknown;
  }
}

enum Enum$SfwFilterPreferenceEnum {
  SFW,
  NSFW_SOMETIMES,
  NSFW_EVERYWHERE,
  $unknown;

  factory Enum$SfwFilterPreferenceEnum.fromJson(String value) =>
      fromJson$Enum$SfwFilterPreferenceEnum(value);

  String toJson() => toJson$Enum$SfwFilterPreferenceEnum(this);
}

String toJson$Enum$SfwFilterPreferenceEnum(Enum$SfwFilterPreferenceEnum e) {
  switch (e) {
    case Enum$SfwFilterPreferenceEnum.SFW:
      return r'SFW';
    case Enum$SfwFilterPreferenceEnum.NSFW_SOMETIMES:
      return r'NSFW_SOMETIMES';
    case Enum$SfwFilterPreferenceEnum.NSFW_EVERYWHERE:
      return r'NSFW_EVERYWHERE';
    case Enum$SfwFilterPreferenceEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SfwFilterPreferenceEnum fromJson$Enum$SfwFilterPreferenceEnum(
  String value,
) {
  switch (value) {
    case r'SFW':
      return Enum$SfwFilterPreferenceEnum.SFW;
    case r'NSFW_SOMETIMES':
      return Enum$SfwFilterPreferenceEnum.NSFW_SOMETIMES;
    case r'NSFW_EVERYWHERE':
      return Enum$SfwFilterPreferenceEnum.NSFW_EVERYWHERE;
    default:
      return Enum$SfwFilterPreferenceEnum.$unknown;
  }
}

enum Enum$SitePermissionEnum {
  ADMIN,
  COMMUNITY_MOD,
  DATABASE_MOD,
  $unknown;

  factory Enum$SitePermissionEnum.fromJson(String value) =>
      fromJson$Enum$SitePermissionEnum(value);

  String toJson() => toJson$Enum$SitePermissionEnum(this);
}

String toJson$Enum$SitePermissionEnum(Enum$SitePermissionEnum e) {
  switch (e) {
    case Enum$SitePermissionEnum.ADMIN:
      return r'ADMIN';
    case Enum$SitePermissionEnum.COMMUNITY_MOD:
      return r'COMMUNITY_MOD';
    case Enum$SitePermissionEnum.DATABASE_MOD:
      return r'DATABASE_MOD';
    case Enum$SitePermissionEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SitePermissionEnum fromJson$Enum$SitePermissionEnum(String value) {
  switch (value) {
    case r'ADMIN':
      return Enum$SitePermissionEnum.ADMIN;
    case r'COMMUNITY_MOD':
      return Enum$SitePermissionEnum.COMMUNITY_MOD;
    case r'DATABASE_MOD':
      return Enum$SitePermissionEnum.DATABASE_MOD;
    default:
      return Enum$SitePermissionEnum.$unknown;
  }
}

enum Enum$SiteThemeEnum {
  LIGHT,
  DARK,
  $unknown;

  factory Enum$SiteThemeEnum.fromJson(String value) =>
      fromJson$Enum$SiteThemeEnum(value);

  String toJson() => toJson$Enum$SiteThemeEnum(this);
}

String toJson$Enum$SiteThemeEnum(Enum$SiteThemeEnum e) {
  switch (e) {
    case Enum$SiteThemeEnum.LIGHT:
      return r'LIGHT';
    case Enum$SiteThemeEnum.DARK:
      return r'DARK';
    case Enum$SiteThemeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$SiteThemeEnum fromJson$Enum$SiteThemeEnum(String value) {
  switch (value) {
    case r'LIGHT':
      return Enum$SiteThemeEnum.LIGHT;
    case r'DARK':
      return Enum$SiteThemeEnum.DARK;
    default:
      return Enum$SiteThemeEnum.$unknown;
  }
}

enum Enum$SortDirection {
  ASCENDING,
  DESCENDING,
  $unknown;

  factory Enum$SortDirection.fromJson(String value) =>
      fromJson$Enum$SortDirection(value);

  String toJson() => toJson$Enum$SortDirection(this);
}

String toJson$Enum$SortDirection(Enum$SortDirection e) {
  switch (e) {
    case Enum$SortDirection.ASCENDING:
      return r'ASCENDING';
    case Enum$SortDirection.DESCENDING:
      return r'DESCENDING';
    case Enum$SortDirection.$unknown:
      return r'$unknown';
  }
}

Enum$SortDirection fromJson$Enum$SortDirection(String value) {
  switch (value) {
    case r'ASCENDING':
      return Enum$SortDirection.ASCENDING;
    case r'DESCENDING':
      return Enum$SortDirection.DESCENDING;
    default:
      return Enum$SortDirection.$unknown;
  }
}

enum Enum$TitleLanguagePreferenceEnum {
  CANONICAL,
  ROMANIZED,
  LOCALIZED,
  $unknown;

  factory Enum$TitleLanguagePreferenceEnum.fromJson(String value) =>
      fromJson$Enum$TitleLanguagePreferenceEnum(value);

  String toJson() => toJson$Enum$TitleLanguagePreferenceEnum(this);
}

String toJson$Enum$TitleLanguagePreferenceEnum(
  Enum$TitleLanguagePreferenceEnum e,
) {
  switch (e) {
    case Enum$TitleLanguagePreferenceEnum.CANONICAL:
      return r'CANONICAL';
    case Enum$TitleLanguagePreferenceEnum.ROMANIZED:
      return r'ROMANIZED';
    case Enum$TitleLanguagePreferenceEnum.LOCALIZED:
      return r'LOCALIZED';
    case Enum$TitleLanguagePreferenceEnum.$unknown:
      return r'$unknown';
  }
}

Enum$TitleLanguagePreferenceEnum fromJson$Enum$TitleLanguagePreferenceEnum(
  String value,
) {
  switch (value) {
    case r'CANONICAL':
      return Enum$TitleLanguagePreferenceEnum.CANONICAL;
    case r'ROMANIZED':
      return Enum$TitleLanguagePreferenceEnum.ROMANIZED;
    case r'LOCALIZED':
      return Enum$TitleLanguagePreferenceEnum.LOCALIZED;
    default:
      return Enum$TitleLanguagePreferenceEnum.$unknown;
  }
}

enum Enum$VolumeSortEnum {
  CREATED_AT,
  UPDATED_AT,
  NUMBER,
  $unknown;

  factory Enum$VolumeSortEnum.fromJson(String value) =>
      fromJson$Enum$VolumeSortEnum(value);

  String toJson() => toJson$Enum$VolumeSortEnum(this);
}

String toJson$Enum$VolumeSortEnum(Enum$VolumeSortEnum e) {
  switch (e) {
    case Enum$VolumeSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$VolumeSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$VolumeSortEnum.NUMBER:
      return r'NUMBER';
    case Enum$VolumeSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$VolumeSortEnum fromJson$Enum$VolumeSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$VolumeSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$VolumeSortEnum.UPDATED_AT;
    case r'NUMBER':
      return Enum$VolumeSortEnum.NUMBER;
    default:
      return Enum$VolumeSortEnum.$unknown;
  }
}

enum Enum$WaifuOrHusbandoEnum {
  WAIFU,
  HUSBANDO,
  $unknown;

  factory Enum$WaifuOrHusbandoEnum.fromJson(String value) =>
      fromJson$Enum$WaifuOrHusbandoEnum(value);

  String toJson() => toJson$Enum$WaifuOrHusbandoEnum(this);
}

String toJson$Enum$WaifuOrHusbandoEnum(Enum$WaifuOrHusbandoEnum e) {
  switch (e) {
    case Enum$WaifuOrHusbandoEnum.WAIFU:
      return r'WAIFU';
    case Enum$WaifuOrHusbandoEnum.HUSBANDO:
      return r'HUSBANDO';
    case Enum$WaifuOrHusbandoEnum.$unknown:
      return r'$unknown';
  }
}

Enum$WaifuOrHusbandoEnum fromJson$Enum$WaifuOrHusbandoEnum(String value) {
  switch (value) {
    case r'WAIFU':
      return Enum$WaifuOrHusbandoEnum.WAIFU;
    case r'HUSBANDO':
      return Enum$WaifuOrHusbandoEnum.HUSBANDO;
    default:
      return Enum$WaifuOrHusbandoEnum.$unknown;
  }
}

enum Enum$WikiSubmissionSortEnum {
  CREATED_AT,
  UPDATED_AT,
  $unknown;

  factory Enum$WikiSubmissionSortEnum.fromJson(String value) =>
      fromJson$Enum$WikiSubmissionSortEnum(value);

  String toJson() => toJson$Enum$WikiSubmissionSortEnum(this);
}

String toJson$Enum$WikiSubmissionSortEnum(Enum$WikiSubmissionSortEnum e) {
  switch (e) {
    case Enum$WikiSubmissionSortEnum.CREATED_AT:
      return r'CREATED_AT';
    case Enum$WikiSubmissionSortEnum.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum$WikiSubmissionSortEnum.$unknown:
      return r'$unknown';
  }
}

Enum$WikiSubmissionSortEnum fromJson$Enum$WikiSubmissionSortEnum(String value) {
  switch (value) {
    case r'CREATED_AT':
      return Enum$WikiSubmissionSortEnum.CREATED_AT;
    case r'UPDATED_AT':
      return Enum$WikiSubmissionSortEnum.UPDATED_AT;
    default:
      return Enum$WikiSubmissionSortEnum.$unknown;
  }
}

enum Enum$WikiSubmissionStatusEnum {
  DRAFT,
  PENDING,
  APPROVED,
  REJECTED,
  $unknown;

  factory Enum$WikiSubmissionStatusEnum.fromJson(String value) =>
      fromJson$Enum$WikiSubmissionStatusEnum(value);

  String toJson() => toJson$Enum$WikiSubmissionStatusEnum(this);
}

String toJson$Enum$WikiSubmissionStatusEnum(Enum$WikiSubmissionStatusEnum e) {
  switch (e) {
    case Enum$WikiSubmissionStatusEnum.DRAFT:
      return r'DRAFT';
    case Enum$WikiSubmissionStatusEnum.PENDING:
      return r'PENDING';
    case Enum$WikiSubmissionStatusEnum.APPROVED:
      return r'APPROVED';
    case Enum$WikiSubmissionStatusEnum.REJECTED:
      return r'REJECTED';
    case Enum$WikiSubmissionStatusEnum.$unknown:
      return r'$unknown';
  }
}

Enum$WikiSubmissionStatusEnum fromJson$Enum$WikiSubmissionStatusEnum(
  String value,
) {
  switch (value) {
    case r'DRAFT':
      return Enum$WikiSubmissionStatusEnum.DRAFT;
    case r'PENDING':
      return Enum$WikiSubmissionStatusEnum.PENDING;
    case r'APPROVED':
      return Enum$WikiSubmissionStatusEnum.APPROVED;
    case r'REJECTED':
      return Enum$WikiSubmissionStatusEnum.REJECTED;
    default:
      return Enum$WikiSubmissionStatusEnum.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'WithTimestamps': {
    'Account',
    'Anime',
    'Block',
    'Category',
    'Chapter',
    'Character',
    'CharacterVoice',
    'Comment',
    'Episode',
    'Favorite',
    'Franchise',
    'Installment',
    'LibraryEntry',
    'LibraryEvent',
    'Manga',
    'Mapping',
    'MediaCharacter',
    'MediaProduction',
    'MediaReaction',
    'MediaRelationship',
    'MediaStaff',
    'Person',
    'Post',
    'Producer',
    'Profile',
    'ProfileLinkSite',
    'ProSubscription',
    'Quote',
    'QuoteLine',
    'Report',
    'Review',
    'SiteLink',
    'Streamer',
    'StreamingLink',
    'Video',
    'Volume',
    'WikiSubmission',
  },
  'AccountChangePasswordErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'ValidationError',
  },
  'AccountCreateErrorsUnion': {'ValidationError'},
  'AccountUpdateErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'Episodic': {'Anime'},
  'Media': {
    'Anime',
    'Manga',
  },
  'AmountConsumed': {
    'AnimeAmountConsumed',
    'MangaAmountConsumed',
  },
  'CategoryBreakdown': {
    'AnimeCategoryBreakdown',
    'MangaCategoryBreakdown',
  },
  'BlockCreateErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'BlockDeleteErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'Unit': {
    'Chapter',
    'Episode',
    'Volume',
  },
  'FavoriteCreateErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'FavoriteDeleteErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'FavoriteItemUnion': {
    'Anime',
    'Character',
    'Manga',
    'Person',
  },
  'Error': {
    'GenericError',
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
    'ValidationError',
  },
  'MappingItemUnion': {
    'Anime',
    'Category',
    'Character',
    'Episode',
    'Manga',
    'Person',
    'Producer',
  },
  'MediaReactionCreateErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
    'ValidationError',
  },
  'MediaReactionDeleteErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'MediaReactionLikeErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'MediaReactionUnlikeErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'ProfileLinkCreateErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
    'ValidationError',
  },
  'ProfileLinkDeleteErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'ProfileLinkUpdateErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
    'ValidationError',
  },
  'ProfileUpdateErrorsUnion': {
    'NotAuthenticatedError',
    'NotAuthorizedError',
    'NotFoundError',
  },
  'ReportItemUnion': {
    'Comment',
    'MediaReaction',
    'Post',
    'Review',
  },
  'Streamable': {
    'StreamingLink',
    'Video',
  },
};
