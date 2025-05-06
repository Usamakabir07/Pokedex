import 'package:cine_verse/app/pages/pokemons_page/widget/pokemon_info_widget.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../domain/entity/response/pokemon/pokemon_response.dart';
import '../../../cubit/save_pokemons_cubit.dart';

class SavedPokemonsPageBody extends StatelessWidget {
  const SavedPokemonsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedPokemonsCubit, List<PokemonResponse>>(
      builder: (context, savedPokemons) {
        if (savedPokemons.isEmpty) {
          return const Center(
            child: Text(
              "No Pokémon saved.",
              style: TextStyle(color: Colors.white),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding10),
          child: Column(
            children: [
              Expanded(
                child: ReorderableListView.builder(
                  itemCount: savedPokemons.length,
                  onReorder: (oldIndex, newIndex) {
                    context
                        .read<SavedPokemonsCubit>()
                        .reorderPokemons(oldIndex, newIndex);
                  },
                  itemBuilder: (context, index) {
                    final pokemon = savedPokemons[index];
                    return PokemonInfoWidget(
                        key: ValueKey(pokemon.name), pokemon: pokemon);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    //   BlocBuilder<SavedPokemonsCubit, Set<String>>(
    //   builder: (context, savedNames) {
    //     final savedPokemons = getIt<StorageService>()
    //         .getAllPokemons()
    //         .where((p) => savedNames.contains(p.name))
    //         .toList();
    //
    //     if (savedPokemons.isEmpty) {
    //       return const Center(
    //         child: Text(
    //           "No Pokémon saved.",
    //           style: TextStyle(color: Colors.white),
    //         ),
    //       );
    //     }
    //
    //     return Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: padding10),
    //       child: Column(
    //         children: [
    //           Expanded(
    //             child: ReorderableListView.builder(
    //               itemCount: savedPokemons.length,
    //               onReorder: (oldIndex, newIndex) {
    //                 if (newIndex > oldIndex) newIndex -= 1;
    //
    //                 // final updatedList = [...savedPokemons];
    //                 // final movedItem = updatedList.removeAt(oldIndex);
    //                 // updatedList.insert(newIndex, movedItem);
    //
    //                 context
    //                     .read<SavedPokemonsCubit>()
    //                     .reorderPokemons(oldIndex, newIndex);
    //               },
    //               itemBuilder: (context, index) {
    //                 final pokemon = savedPokemons[index];
    //                 return PokemonInfoWidget(
    //                     key: ValueKey(pokemon.name), pokemon: pokemon);
    //               },
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
