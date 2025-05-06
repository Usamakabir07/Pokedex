import 'package:cine_verse/app/pages/search_pokemon_page/cubit/search_pokemon_state.dart';
import 'package:cine_verse/domain/entity/request/search_pokemon/search_pokemon_request.dart';
import 'package:cine_verse/domain/use_case/search_pokemon_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchPokemonCubit extends Cubit<SearchPokemonState> {
  SearchPokemonCubit(this._searchPokemonUseCase)
      : super(const SearchPokemonState.initial());

  final SearchPokemonUseCase _searchPokemonUseCase;

  Future<void> searchPokemon(SearchPokemonRequest request) async {
    emit(const SearchPokemonState.loading());
    final response = await _searchPokemonUseCase(request);
    response.fold(
      (error) => emit(SearchPokemonState.error(error)),
      (data) => emit(SearchPokemonState.success(pokemons: data)),
    );
  }
}
