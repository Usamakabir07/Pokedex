import 'package:cine_verse/data/dto/request/search_pokemon/search_pokemon_request_dto.dart';
import 'package:cine_verse/data/dto/response/pokemon/pokemon_response_dto.dart';

abstract class AppDataSource {
  Future<void> login(String username, String password);
  Future<List<PokemonResponseDto>> getPokemons();
  Future<List<PokemonResponseDto>> searchPokemon(SearchPokemonRequestDto request);
}
