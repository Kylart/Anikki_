part of 'layout_bloc.dart';

sealed class LayoutState extends Equatable {
  const LayoutState({
    this.drawerMedia,
    this.drawerLibraryEntry,
    this.leftDrawerType,
  });

  final Media? drawerMedia;
  final LibraryEntry? drawerLibraryEntry;

  final LeftDrawerType? leftDrawerType;

  @override
  List<Object?> get props => [
        drawerMedia,
        drawerLibraryEntry,
        leftDrawerType,
      ];
}

final class LayoutPortrait extends LayoutState {
  const LayoutPortrait({
    super.drawerMedia,
    super.drawerLibraryEntry,
    super.leftDrawerType,
  });
}

final class LayoutLandscape extends LayoutState {
  const LayoutLandscape({
    super.drawerMedia,
    super.drawerLibraryEntry,
    super.leftDrawerType,
  });
}
