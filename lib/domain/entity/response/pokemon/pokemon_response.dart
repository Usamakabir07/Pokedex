import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    required String name,
    required String imageUrl,
    String? generation,
    required List<String> abilities,
    required List<String> types,
    required List<Stat> stats,
    required int height,
    required int weight,
    required int baseExperience,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat({
    required String name,
    required int baseStat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}
