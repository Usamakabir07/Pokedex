import 'dart:math';

import 'package:cine_verse/data/data_source/utils/database_constants.dart';
import 'package:cine_verse/data/dto/request/search_pokemon/search_pokemon_request_dto.dart';
import 'package:cine_verse/data/dto/response/pokemon/pokemon_response_dto.dart';
import 'package:cine_verse/injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/data_source/app_data_source.dart';

@Injectable(as: AppDataSource)
class AppDataSourceImpl implements AppDataSource {
  AppDataSourceImpl();

  Dio dio = getIt<Dio>();

  @override
  Future<void> login(String username, String password) async {
    ///Username and password to login
  }

  @override
  Future<List<PokemonResponseDto>> getPokemons() async {
    List<PokemonResponseDto> pokemonList = [];
    final random = Random();
    final Set<int> randomIds = {};
    while (randomIds.length < 10) {
      randomIds.add(1 + random.nextInt(DatabaseConstants.maxPokemonId));
    }
    for (final id in randomIds) {
      final response = await dio.get('${DatabaseConstants.pokemon}/$id');
      if (response.statusCode == 200) {
        final pokemon = PokemonResponseDto.fromJson(response.data);
        pokemonList.add(pokemon);
      }
    }
    return pokemonList;
  }

  @override
  Future<List<PokemonResponseDto>> searchPokemon(
      SearchPokemonRequestDto request) async {
    List<PokemonResponseDto> pokemonList = [];
    final response =
        await dio.get('${DatabaseConstants.pokemon}/${request.name}');
    if (response.statusCode == 200) {
      final pokemon = PokemonResponseDto.fromJson(response.data);
      pokemonList.add(pokemon);
    }
    return pokemonList;
  }
}
