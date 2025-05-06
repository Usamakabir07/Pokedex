import "package:auto_route/annotations.dart";
import "package:cine_verse/app/pages/pokemons_page/cubit/get_pokemon_cubit.dart";
import "package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart";
import "package:cine_verse/app/pages/pokemons_page/widget/pokemon_page_body.dart";
import "package:cine_verse/injectable/injectable.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../login_page/cubit/auth_cubit.dart";

@RoutePage()
class PokemonPage extends StatelessWidget {
  const PokemonPage({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => getIt<GetPokemonsCubit>()),
          BlocProvider(create: (_) => getIt<SavedPokemonsCubit>()),
          BlocProvider(create: (_) => getIt<AuthCubit>()),
        ],
        child: Builder(builder: (context) {
          return const PokemonPageBody();
        }),
      );
}
