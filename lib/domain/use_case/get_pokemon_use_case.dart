import 'package:cine_verse/domain/entity/response/pokemon/pokemon_response.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../repositories/app_repository.dart';
import '../utils/failure.dart';

@injectable
class GetPokemonUseCase {
  GetPokemonUseCase(this._appRepo);
  final AppRepository _appRepo;

  Future<Either<Failure, List<PokemonResponse>>> call() async =>
      _appRepo.getPokemons();
}
