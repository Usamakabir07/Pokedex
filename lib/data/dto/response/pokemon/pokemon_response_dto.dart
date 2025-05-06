import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/response/pokemon/pokemon_response.dart';

part 'pokemon_response_dto.freezed.dart';
part 'pokemon_response_dto.g.dart';

@freezed
class PokemonResponseDto with _$PokemonResponseDto {
  const factory PokemonResponseDto({
    required int id,
    required String name,
    @JsonKey(name: 'base_experience') required int baseExperience,
    required int height,
    required int weight,
    required List<AbilityDto> abilities,
    required List<TypeDto> types,
    required List<StatDto> stats,
  }) = _PokemonResponseDto;

  factory PokemonResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseDtoFromJson(json);
}

@freezed
class AbilityDto with _$AbilityDto {
  const factory AbilityDto({
    required NamedApiResource ability,
  }) = _AbilityDto;

  factory AbilityDto.fromJson(Map<String, dynamic> json) =>
      _$AbilityDtoFromJson(json);
}

@freezed
class TypeDto with _$TypeDto {
  const factory TypeDto({
    required NamedApiResource type,
  }) = _TypeDto;

  factory TypeDto.fromJson(Map<String, dynamic> json) =>
      _$TypeDtoFromJson(json);
}

@freezed
class StatDto with _$StatDto {
  const factory StatDto({
    @JsonKey(name: 'base_stat') required int baseStat,
    required NamedApiResource stat,
  }) = _StatDto;

  factory StatDto.fromJson(Map<String, dynamic> json) =>
      _$StatDtoFromJson(json);
}

@freezed
class NamedApiResource with _$NamedApiResource {
  const factory NamedApiResource({
    required String name,
    required String url,
  }) = _NamedApiResource;

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);
}

extension PokemonDtoX on PokemonResponseDto {
  PokemonResponse toEntity({String? generation}) {
    return PokemonResponse(
      name: name,
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png',
      generation: generation,
      abilities:
          abilities.map((a) => a.ability.name).toList(), // Null-safe access
      types: types.map((t) => t.type.name).toList(), // Null-safe access
      stats: stats
          .map((s) => Stat(name: s.stat.name, baseStat: s.baseStat))
          .toList(), // Null-safe access
      height: height,
      weight: weight,
      baseExperience: baseExperience,
    );
  }
}
