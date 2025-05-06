import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/utils/failure.dart';

part 'search_pokemon_state.freezed.dart';

@freezed
class SearchPokemonState with _$SearchPokemonState {
  const factory SearchPokemonState.initial() = _SearchPokemonStateInitial;
  const factory SearchPokemonState.loading() = _SearchPokemonStateLoading;
  const factory SearchPokemonState.success(
      {required List<PokemonResponse> pokemons}) = _SearchPokemonStateSuccess;
  const factory SearchPokemonState.error(Failure error) = _SearchPokemonStateError;
}
