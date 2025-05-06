import 'package:cine_verse/app/common_widgets/app_elevated_button.dart';
import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:cine_verse/app/utils/paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../domain/entity/response/pokemon/pokemon_response.dart';
import '../../../../../common_widgets/app_notification_toast.dart';
import '../../../../../themes/app_styles.dart';
import '../cubit/save_pokemons_cubit.dart';

class PokemonDetailPageBody extends StatelessWidget {
  const PokemonDetailPageBody({super.key, required this.pokemon});
  final PokemonResponse pokemon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * double03,
            color: AppColors.blueGreyDark,
            child: Image.network(
              pokemon.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: height10),
          Padding(
            padding: const EdgeInsets.all(padding10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pokemon.name.toUpperCase(),
                  style: AppStyles.titleMediumBold,
                ),
                const SizedBox(height: height30),
                _buildDetailCard(
                  context,
                  title: 'General Information',
                  children: [
                    _buildDetailRow(
                        'Generation', pokemon.generation ?? "Not given"),
                    _buildDetailRow('Height', '${pokemon.height / 10} m'),
                    _buildDetailRow('Weight',
                        '${(pokemon.weight / 10).toStringAsFixed(0)} kg'),
                    _buildDetailRow(
                        'Base Experience', '${pokemon.baseExperience}'),
                  ],
                ),
                const SizedBox(height: height10),
                const Divider(
                    thickness: appBarDivider, color: AppColors.gamboge),
                const SizedBox(height: height10),
                _buildDetailCard(
                  context,
                  title: 'Abilities',
                  children: [
                    Text(
                      pokemon.abilities.isNotEmpty
                          ? pokemon.abilities.join(", ").toUpperCase()
                          : 'None',
                      style:
                          AppStyles.mediumBold.copyWith(color: AppColors.iron),
                    ),
                  ],
                ),
                const SizedBox(height: height10),
                const Divider(
                    thickness: appBarDivider, color: AppColors.gamboge),
                const SizedBox(height: height10),
                _buildDetailCard(
                  context,
                  title: 'Types',
                  children: [
                    Text(
                      pokemon.types.isNotEmpty
                          ? pokemon.types.join(", ").toUpperCase()
                          : '',
                      style:
                          AppStyles.mediumBold.copyWith(color: AppColors.iron),
                    ),
                  ],
                ),
                const SizedBox(height: height10),
                const Divider(
                    thickness: appBarDivider, color: AppColors.gamboge),
                const SizedBox(height: height10),
                _buildDetailCard(
                  context,
                  title: 'Stats',
                  children: pokemon.stats
                      .map(
                        (stat) => _buildDetailRow(
                          stat.name.toUpperCase(),
                          '${stat.baseStat}',
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: height30),
                BlocBuilder<SavedPokemonsCubit, List<PokemonResponse>>(
                  builder: (context, savedPokemons) {
                    final isSaved = savedPokemons.contains(pokemon);
                    return isSaved
                        ? Row(
                            children: [
                              Expanded(
                                flex: flex1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.done_rounded,
                                        color: AppColors.white),
                                    Text(" Saved",
                                        style: AppStyles.titleMediumBold),
                                  ],
                                ),
                              ),
                              const SizedBox(width: width10),
                              Expanded(
                                flex: flex2,
                                child: AppElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<SavedPokemonsCubit>()
                                        .removePokemon(pokemon.name);

                                    AppNotificationToast.show(
                                        "${pokemon.name.toUpperCase()} is removed from the collection");
                                  },
                                  text: 'Remove from collection',
                                  width: MediaQuery.of(context).size.width *
                                      double01,
                                  color: AppColors.gamboge,
                                  prefixIconColor: AppColors.white,
                                ),
                              ),
                            ],
                          )
                        : Align(
                            alignment: Alignment.center,
                            child: AppElevatedButton(
                              onPressed: () {
                                context
                                    .read<SavedPokemonsCubit>()
                                    .savePokemon(pokemon);
                                AppNotificationToast.show(
                                    "${pokemon.name.toUpperCase()} is added to the collection");
                              },
                              text:
                                  'Save ${pokemon.name.toUpperCase()} to collection',
                              width:
                                  MediaQuery.of(context).size.width * double09,
                              color: AppColors.gamboge,
                              prefixIcon: savedIcon,
                              prefixIconColor: AppColors.white,
                            ),
                          );
                  },
                ),
                const SizedBox(height: height30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailCard(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.bodyLarge.copyWith(color: AppColors.gamboge),
        ),
        const SizedBox(
          height: height6,
        ),
        ...children,
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppStyles.mediumBold.copyWith(color: AppColors.iron),
        ),
        Text(
          value,
          style: AppStyles.mediumBold.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}
