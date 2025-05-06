import "package:auto_route/annotations.dart";
import "package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart";
import "package:cine_verse/app/pages/pokemons_page/sub_pages/pokemon_detail_page/sub_pages/saved_pokemon_page/widget/saved_pokemon_page_body.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../../common_widgets/app_scaffold.dart";
import "../../../../../../themes/app_styles.dart";

@RoutePage()
class SavedPokemonPage extends StatelessWidget {
  const SavedPokemonPage({super.key, required this.savedPokemonsCubit});
  final SavedPokemonsCubit savedPokemonsCubit;

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: savedPokemonsCubit,
        child: AppScaffold(
          canGoBack: true,
          showAppBar: true,
          title: Text(
            'My pokémons',
            style: AppStyles.titleSmallBold,
          ),
          body: const SavedPokemonsPageBody(),
        ),
      );
}
