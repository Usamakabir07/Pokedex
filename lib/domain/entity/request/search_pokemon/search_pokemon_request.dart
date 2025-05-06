import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/dto/request/search_pokemon/search_pokemon_request_dto.dart';

part 'search_pokemon_request.freezed.dart';

@freezed
class SearchPokemonRequest with _$SearchPokemonRequest {
  const factory SearchPokemonRequest({
    required String name,
  }) = _SearchPokemonRequest;
}

extension SearchPokemonRequestExtension on SearchPokemonRequest {
  SearchPokemonRequestDto get toDto => SearchPokemonRequestDto(
        name: name,
      );
}
