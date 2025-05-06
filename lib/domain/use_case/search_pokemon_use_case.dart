import 'package:cine_verse/domain/entity/request/search_pokemon/search_pokemon_request.dart';
import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../repositories/app_repository.dart';
import '../utils/failure.dart';

@injectable
class SearchPokemonUseCase {
  SearchPokemonUseCase(this._appRepo);
  final AppRepository _appRepo;

  Future<Either<Failure, List<PokemonResponse>>> call(
          SearchPokemonRequest request) async =>
      _appRepo.searchPokemon(request);
}
