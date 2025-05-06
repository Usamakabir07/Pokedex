import 'package:cine_verse/app/pages/pokemons_page/cubit/get_pokemons_state.dart';
import 'package:cine_verse/domain/use_case/get_pokemon_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPokemonsCubit extends Cubit<GetPokemonsState> {
  GetPokemonsCubit(this._getPokemonUseCase)
      : super(const GetPokemonsState.initial());

  final GetPokemonUseCase _getPokemonUseCase;

  Future<void> getPokemons() async {
    emit(const GetPokemonsState.loading());
    final response = await _getPokemonUseCase();
    response.fold(
      (error) => emit(GetPokemonsState.error(error)),
      (data) => emit(GetPokemonsState.success(pokemons: data)),
    );
  }
}
