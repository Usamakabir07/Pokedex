import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/utils/failure.dart';

part 'get_pokemons_state.freezed.dart';

@freezed
class GetPokemonsState with _$GetPokemonsState {
  const factory GetPokemonsState.initial() = _GetPokemonsStateInitial;
  const factory GetPokemonsState.loading() = _GetPokemonsStateLoading;
  const factory GetPokemonsState.success(
      {required List<PokemonResponse> pokemons}) = _GetPokemonsStateSuccess;
  const factory GetPokemonsState.error(Failure error) = _GetPokemonsStateError;
}
