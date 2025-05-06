import 'package:cine_verse/domain/entity/request/search_pokemon/search_pokemon_request.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:dartz/dartz.dart';

import '../utils/failure.dart';
import '../utils/success.dart';

abstract class AppRepository {
  Future<Either<Failure, Success>> login(
      {required String username, required String password});
  Future<Either<Failure, List<PokemonResponse>>> getPokemons();
  Future<Either<Failure, List<PokemonResponse>>> searchPokemon(
      SearchPokemonRequest request);
}
