import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/pages/pokemons_page/pokemon_page.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entity/response/pokemon/pokemon_response.dart';
import '../pages/login_page/login_page.dart';
import '../pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart';
import '../pages/pokemons_page/sub_pages/pokemon_detail_page/pokemon_detail_page.dart';
import '../pages/pokemons_page/sub_pages/pokemon_detail_page/sub_pages/saved_pokemon_page/saved_pokemon_page.dart';
import '../pages/search_pokemon_page/search_pokemon_page.dart';
import '../pages/splash_page/splash_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: PokemonRoute.page),
        AutoRoute(page: PokemonDetailRoute.page),
        AutoRoute(page: SavedPokemonRoute.page),
        AutoRoute(page: SearchPokemonRoute.page),
      ];
}
