import "package:auto_route/annotations.dart";
import "package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart";
import "package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_cubit.dart";
import "package:cine_verse/app/pages/search_pokemon_page/widget/search_pokemon_page_body.dart";
import "package:cine_verse/injectable/injectable.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

@RoutePage()
class SearchPokemonPage extends StatelessWidget {
  const SearchPokemonPage({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<SearchPokemonCubit>(),
          ),
          BlocProvider(
            create: (_) => getIt<SavedPokemonsCubit>(),
          ),
        ],
        child: SearchPokemonPageBody(),
      );
}
