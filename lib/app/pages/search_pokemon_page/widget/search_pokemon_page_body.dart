import 'package:cine_verse/app/common_widgets/app_scaffold.dart';
import 'package:cine_verse/app/pages/pokemons_page/widget/pokemon_info_widget.dart';
import 'package:cine_verse/app/pages/search_pokemon_page/widget/search_pokemon_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_cubit.dart';
import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_state.dart';
import 'package:cine_verse/domain/entity/request/search_pokemon/search_pokemon_request.dart';

import '../../../common_widgets/app_error_text_widget.dart';
import '../../../common_widgets/app_progress_indicator.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../../../utils/dimensions.dart';

class SearchPokemonPageBody extends StatelessWidget {
  SearchPokemonPageBody({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text(
        "Search Pokémons",
        style: AppStyles.titleSmallBold,
      ),
      canGoBack: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding10),
        child: Column(
          children: [
            SearchPokemonField(
              controller: _searchController,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  final request = SearchPokemonRequest(name: value);
                  context.read<SearchPokemonCubit>().searchPokemon(request);
                }
              },
            ),
            const SizedBox(height: height20),
            Expanded(
              child: BlocBuilder<SearchPokemonCubit, SearchPokemonState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const Center(
                      child: AppProgressIndicator(color: AppColors.gamboge),
                    ),
                    success: (pokemonsData) {
                      if (pokemonsData.isEmpty) {
                        return Center(
                          child: Text(
                            'Whoops! No pokémon found!',
                            style: AppStyles.bodyLarge
                                .copyWith(color: AppColors.iron),
                          ),
                        );
                      }
                      return ListView.builder(
                        itemCount: pokemonsData.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(bottom: padding100),
                        itemBuilder: (context, index) {
                          final pokemon = pokemonsData[index];
                          return PokemonInfoWidget(pokemon: pokemon);
                        },
                      );
                    },
                    error: (err) => AppErrorTextWidget(
                        title:
                            'No pokémon found for: ${_searchController.text}'),
                    orElse: () => Center(
                      child: Text(
                        'Pokémons will appear here',
                        style:
                            AppStyles.bodyLarge.copyWith(color: AppColors.iron),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
