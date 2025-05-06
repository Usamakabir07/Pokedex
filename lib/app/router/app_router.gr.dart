// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [PokemonDetailPage]
class PokemonDetailRoute extends PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    Key? key,
    required PokemonResponse pokemon,
    required SavedPokemonsCubit savedPokemonsCubit,
    List<PageRouteInfo>? children,
  }) : super(
         PokemonDetailRoute.name,
         args: PokemonDetailRouteArgs(
           key: key,
           pokemon: pokemon,
           savedPokemonsCubit: savedPokemonsCubit,
         ),
         initialChildren: children,
       );

  static const String name = 'PokemonDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PokemonDetailRouteArgs>();
      return PokemonDetailPage(
        key: args.key,
        pokemon: args.pokemon,
        savedPokemonsCubit: args.savedPokemonsCubit,
      );
    },
  );
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({
    this.key,
    required this.pokemon,
    required this.savedPokemonsCubit,
  });

  final Key? key;

  final PokemonResponse pokemon;

  final SavedPokemonsCubit savedPokemonsCubit;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{key: $key, pokemon: $pokemon, savedPokemonsCubit: $savedPokemonsCubit}';
  }
}

/// generated route for
/// [PokemonPage]
class PokemonRoute extends PageRouteInfo<void> {
  const PokemonRoute({List<PageRouteInfo>? children})
    : super(PokemonRoute.name, initialChildren: children);

  static const String name = 'PokemonRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PokemonPage();
    },
  );
}

/// generated route for
/// [SavedPokemonPage]
class SavedPokemonRoute extends PageRouteInfo<SavedPokemonRouteArgs> {
  SavedPokemonRoute({
    Key? key,
    required SavedPokemonsCubit savedPokemonsCubit,
    List<PageRouteInfo>? children,
  }) : super(
         SavedPokemonRoute.name,
         args: SavedPokemonRouteArgs(
           key: key,
           savedPokemonsCubit: savedPokemonsCubit,
         ),
         initialChildren: children,
       );

  static const String name = 'SavedPokemonRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SavedPokemonRouteArgs>();
      return SavedPokemonPage(
        key: args.key,
        savedPokemonsCubit: args.savedPokemonsCubit,
      );
    },
  );
}

class SavedPokemonRouteArgs {
  const SavedPokemonRouteArgs({this.key, required this.savedPokemonsCubit});

  final Key? key;

  final SavedPokemonsCubit savedPokemonsCubit;

  @override
  String toString() {
    return 'SavedPokemonRouteArgs{key: $key, savedPokemonsCubit: $savedPokemonsCubit}';
  }
}

/// generated route for
/// [SearchPokemonPage]
class SearchPokemonRoute extends PageRouteInfo<void> {
  const SearchPokemonRoute({List<PageRouteInfo>? children})
    : super(SearchPokemonRoute.name, initialChildren: children);

  static const String name = 'SearchPokemonRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchPokemonPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
