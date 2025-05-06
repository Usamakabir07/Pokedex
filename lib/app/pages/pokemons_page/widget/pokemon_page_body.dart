import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/common_widgets/app_error_text_widget.dart';
import 'package:cine_verse/app/common_widgets/app_scaffold.dart';
import 'package:cine_verse/app/pages/pokemons_page/cubit/get_pokemon_cubit.dart';
import 'package:cine_verse/app/pages/pokemons_page/cubit/get_pokemons_state.dart';
import 'package:cine_verse/app/pages/pokemons_page/widget/pokemon_info_widget.dart';
import 'package:cine_verse/app/pages/pokemons_page/widget/surprise_me_button.dart';
import 'package:cine_verse/app/router/app_router.dart';
import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common_widgets/app_progress_indicator.dart';
import '../../../utils/dimensions.dart';
import '../../login_page/cubit/auth_cubit.dart';
import '../sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart';

class PokemonPageBody extends StatelessWidget {
  const PokemonPageBody({super.key});
  @override
  Widget build(BuildContext context) {
    final savedCubit = context.read<SavedPokemonsCubit>();
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoggedOut) {
          context.router.replace(const LoginRoute());
        }
      },
      child: AppScaffold(
        canGoBack: false,
        showAppBar: true,
        leadingIcon: GestureDetector(
            onTap: () async {
              await context.router.push(
                const SearchPokemonRoute(),
              );
              savedCubit.loadSavedPokemons();
            },
            child: const Icon(Icons.search_rounded, color: AppColors.iron)),
        actions: [
          GestureDetector(
            onTap: () async {
              final savedCubit = context.read<SavedPokemonsCubit>();
              savedCubit.loadSavedPokemons();
              await context.router.push(
                SavedPokemonRoute(
                  savedPokemonsCubit: savedCubit,
                ),
              );
            },
            child: const Icon(
              Icons.collections_bookmark_outlined,
              color: AppColors.iron,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthCubit>().logout();
            },
          ),
        ],
        title: Text(
          "Pokémons by Pokédex",
          style: AppStyles.titleSmallBold,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding24),
          child: BlocBuilder<GetPokemonsCubit, GetPokemonsState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Center(
                  child: AppProgressIndicator(color: AppColors.gamboge),
                ),
                success: (pokemonsData) {
                  if (pokemonsData.isEmpty) {
                    return Center(
                      child: Text(
                        'Pokémons will appear here',
                        style:
                            AppStyles.bodyLarge.copyWith(color: AppColors.iron),
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
                error: (err) => AppErrorTextWidget(title: '$err'),
                orElse: () => Center(
                  child: Text(
                    'Pokémons will appear here',
                    style: AppStyles.bodyLarge.copyWith(color: AppColors.iron),
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: SurpriseMeButton(
          onPressed: () {
            context.read<GetPokemonsCubit>().getPokemons();
          },
        ),
      ),
    );
  }
}
