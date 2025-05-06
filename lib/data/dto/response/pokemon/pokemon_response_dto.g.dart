// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseDtoImpl _$$PokemonResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonResponseDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      baseExperience: (json['base_experience'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AbilityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonResponseDtoImplToJson(
        _$PokemonResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'types': instance.types,
      'stats': instance.stats,
    };

_$AbilityDtoImpl _$$AbilityDtoImplFromJson(Map<String, dynamic> json) =>
    _$AbilityDtoImpl(
      ability:
          NamedApiResource.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AbilityDtoImplToJson(_$AbilityDtoImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
    };

_$TypeDtoImpl _$$TypeDtoImplFromJson(Map<String, dynamic> json) =>
    _$TypeDtoImpl(
      type: NamedApiResource.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeDtoImplToJson(_$TypeDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$StatDtoImpl _$$StatDtoImplFromJson(Map<String, dynamic> json) =>
    _$StatDtoImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      stat: NamedApiResource.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatDtoImplToJson(_$StatDtoImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };

_$NamedApiResourceImpl _$$NamedApiResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$NamedApiResourceImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NamedApiResourceImplToJson(
        _$NamedApiResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
