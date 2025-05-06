import 'dart:convert';

import 'package:cine_verse/data/data_source/utils/database_constants.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entity/response/pokemon/pokemon_response.dart';

@singleton
class StorageService {
  final GetStorage _storage = GetStorage();
  static const String _pokemonPrefix = 'pokemon_';
  static const String _userKey = 'user_key';

  Future<void> init() async {
    await _storage.initStorage;
  }

  void clear() {
    _storage.erase();
  }

  Future<void> saveCredentials(String email, String password) async {
    final credentials = {
      'email': email,
      'password': password,
    };
    await _storage.write(_userKey, json.encode(credentials));
  }

  Future<void> removeCredentials() async {
    await _storage.remove(_userKey);
  }

  Future<Map<String, String?>> getCredentials() async {
    final credentialsJson = _storage.read<String>(_userKey);
    if (credentialsJson != null) {
      final Map<String, dynamic> credentials = json.decode(credentialsJson);
      return {
        'email': credentials['email'],
        'password': credentials['password'],
      };
    }
    return {};
  }

  Future<void> savePokemon(PokemonResponse pokemon) async {
    final json = pokemon.toJson();

    json[DatabaseConstants.stats] =
        pokemon.stats.map((e) => e.toJson()).toList();
    await _storage.write('$_pokemonPrefix${pokemon.name}', json);
  }

  PokemonResponse? getPokemon(String name) {
    final data = _storage.read('$_pokemonPrefix$name');

    if (data is Map<String, dynamic>) {
      return PokemonResponse.fromJson(data);
    } else if (data is Map) {
      final casted = data.map((key, value) => MapEntry(key.toString(), value));
      return PokemonResponse.fromJson(casted);
    }

    return null;
  }

  Future<void> removePokemon(String name) async {
    await _storage.remove('$_pokemonPrefix$name');
  }

  List<PokemonResponse> getAllPokemons() {
    final keys = _storage.getKeys().where((dynamic key) {
      if (key is String) {
        return key.startsWith(_pokemonPrefix);
      }
      return false;
    });

    return keys
        .map((key) {
          final data = _storage.read(key);
          if (data != null) {
            return PokemonResponse.fromJson(Map<String, dynamic>.from(data));
          }
          return null;
        })
        .whereType<PokemonResponse>()
        .toList();
  }

  Future<void> clearAllPokemons() async {
    final keys = _storage
        .getKeys()
        .where((key) => key is String && key.startsWith(_pokemonPrefix))
        .toList();

    for (final key in keys) {
      await _storage.remove(key);
    }
  }

  List<String> getAllPokemonNames() {
    return _storage
        .getKeys()
        .where((key) => key is String && key.startsWith(_pokemonPrefix))
        .map(
          (key) => key.replaceFirst(_pokemonPrefix, ''),
        )
        .toList()
        .cast<String>();
  }

  Future<void> savePokemonOrder(List<PokemonResponse> orderedPokemons) async {
    await clearAllPokemons();
    for (var pokemon in orderedPokemons) {
      await savePokemon(pokemon);
    }
  }

  List<String> getPokemonOrder() {
    return _storage.read('ordered_pokemon_names') ?? [];
  }
}
