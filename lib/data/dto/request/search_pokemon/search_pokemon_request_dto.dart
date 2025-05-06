import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_pokemon_request_dto.freezed.dart';
part 'search_pokemon_request_dto.g.dart';

@freezed
class SearchPokemonRequestDto with _$SearchPokemonRequestDto {
  const factory SearchPokemonRequestDto({
    required String name,
  }) = _SearchPokemonRequestDto;

  factory SearchPokemonRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SearchPokemonRequestDtoFromJson(json);
}
