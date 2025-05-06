import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../data/data_source/utils/storage_service.dart';
import '../../../../../../domain/entity/response/pokemon/pokemon_response.dart';


@injectable
class SavedPokemonsCubit extends Cubit<List<PokemonResponse>> {
  final StorageService storage;
  List<String> orderedPokemonNames = [];

  SavedPokemonsCubit(this.storage) : super([]) {
    loadSavedPokemons();
  }

  void loadSavedPokemons() {
    final names = storage.getAllPokemonNames();
    orderedPokemonNames = names.toList();
    final pokemons = names
        .map((name) => storage.getPokemon(name))
        .whereType<PokemonResponse>()
        .toList();
    emit(pokemons);
  }

  Future<void> savePokemon(PokemonResponse pokemon) async {
    await storage.savePokemon(pokemon);
    if (!orderedPokemonNames.contains(pokemon.name)) {
      orderedPokemonNames.add(pokemon.name);
    }

    final updatedList = orderedPokemonNames
        .map((name) => storage.getPokemon(name))
        .whereType<PokemonResponse>()
        .toList();

    emit(updatedList);
  }

  Future<void> removePokemon(String name) async {
    await storage.removePokemon(name);
    orderedPokemonNames.remove(name);

    final updatedList = orderedPokemonNames
        .map((name) => storage.getPokemon(name))
        .whereType<PokemonResponse>()
        .toList();

    emit(updatedList);
  }

  bool isSaved(String name) {
    return state.any((pokemon) => pokemon.name == name);
  }

  void reorderPokemons(int oldIndex, int newIndex) {
    if (oldIndex < 0 || newIndex < 0 || oldIndex == newIndex) return;

    final pokemonName = orderedPokemonNames.removeAt(oldIndex);
    orderedPokemonNames.insert(newIndex, pokemonName);

    _savePokemonOrderToStorage();

    final updatedList = orderedPokemonNames
        .map((name) => storage.getPokemon(name))
        .whereType<PokemonResponse>()
        .toList();

    emit(updatedList);
  }

  void _savePokemonOrderToStorage() {
    final pokemons = orderedPokemonNames
        .map((name) => storage.getPokemon(name))
        .whereType<PokemonResponse>()
        .toList();

    storage.savePokemonOrder(pokemons);
  }
}


// @injectable
// class SavedPokemonsCubit extends Cubit<Set<String>> {
//   final StorageService storage;
//   List<String> orderedPokemonNames = [];
//
//   SavedPokemonsCubit(this.storage) : super({}) {
//     loadSavedPokemons();
//   }
//
//   void loadSavedPokemons() {
//     final names = storage.getAllPokemonNames();
//     orderedPokemonNames = names.toList();
//     emit(names.toSet());
//   }
//
//   void savePokemon(PokemonResponse pokemon) {
//     storage.savePokemon(pokemon);
//     emit({...state, pokemon.name});
//     orderedPokemonNames.add(pokemon.name);
//   }
//
//   void removePokemon(String name) {
//     storage.removePokemon(name);
//     emit({...state}..remove(name));
//     orderedPokemonNames.remove(name);
//   }
//
//   bool isSaved(String name) => state.contains(name);
//
//   void reorderPokemons(int oldIndex, int newIndex) {
//     if (oldIndex < 0 || newIndex < 0 || oldIndex == newIndex) return;
//
//     final pokemonName = orderedPokemonNames.removeAt(oldIndex);
//     orderedPokemonNames.insert(newIndex, pokemonName);
//
//     _savePokemonOrderToStorage();
//   }
//
//   void _savePokemonOrderToStorage() {
//     final pokemons = orderedPokemonNames
//         .map((name) => storage.getPokemon(name))
//         .whereType<PokemonResponse>()
//         .toList();
//
//     storage.savePokemonOrder(pokemons);
//   }
// }
