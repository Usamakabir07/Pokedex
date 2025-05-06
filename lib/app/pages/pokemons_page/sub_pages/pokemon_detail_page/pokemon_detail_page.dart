import "package:auto_route/annotations.dart";
import "package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart";
import "package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/widget/pokemon_detail_page_body.dart";
import "package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../common_widgets/app_scaffold.dart";
import "../../../../themes/app_styles.dart";

@RoutePage()
class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage(
      {super.key, required this.pokemon, required this.savedPokemonsCubit});
  final PokemonResponse pokemon;
  final SavedPokemonsCubit savedPokemonsCubit;

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: savedPokemonsCubit,
        child: AppScaffold(
          canGoBack: true,
          showAppBar: true,
          title: Text(
            pokemon.name.toUpperCase(),
            style: AppStyles.titleSmallBold,
          ),
          body: PokemonDetailPageBody(pokemon: pokemon),
        ),
      );
}
