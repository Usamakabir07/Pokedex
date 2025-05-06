import 'package:auto_route/auto_route.dart';
import 'package:cine_verse/app/common_widgets/app_notification_toast.dart';
import 'package:cine_verse/app/router/app_router.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart';

class PokemonInfoWidget extends StatelessWidget {
  const PokemonInfoWidget({super.key, required this.pokemon});
  final PokemonResponse pokemon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async {
        final savedCubit = context.read<SavedPokemonsCubit>();
        await context.router.push(
          PokemonDetailRoute(
            pokemon: pokemon,
            savedPokemonsCubit: savedCubit,
          ),
        );
        savedCubit.loadSavedPokemons();
      },
      leading: CircleAvatar(
        backgroundColor: AppColors.iron,
        radius: radius24,
        child: Image.network(
          pokemon.imageUrl,
          errorBuilder: (_, __, ___) => const Icon(
            Icons.image_not_supported,
            color: AppColors.iron,
          ),
        ),
      ),
      contentPadding: EdgeInsets.zero,
      title: Text(
        pokemon.name.toUpperCase(),
        style: AppStyles.bodyLarge.copyWith(
          color: AppColors.gamboge,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        pokemon.abilities.join(", "),
        style: AppStyles.bodyMedium.copyWith(color: AppColors.iron),
      ),
      trailing: BlocBuilder<SavedPokemonsCubit, List<PokemonResponse>>(
        builder: (context, savedPokemons) {
          final isSaved = savedPokemons.contains(pokemon);
          return isSaved
              ? const Icon(
                  Icons.done_rounded,
                  color: AppColors.gamboge,
                )
              : GestureDetector(
                  onTap: () {
                    context.read<SavedPokemonsCubit>().savePokemon(pokemon);
                    AppNotificationToast.show(
                        "${pokemon.name.toUpperCase()} is added to the collection");
                  },
                  child: const Icon(
                    Icons.add_circle_outline_rounded,
                    color: AppColors.gamboge,
                  ),
                );
        },
      ),
    );
  }
}
