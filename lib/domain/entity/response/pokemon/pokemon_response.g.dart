// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseImpl _$$PokemonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonResponseImpl(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      generation: json['generation'] as String?,
      abilities:
          (json['abilities'] as List<dynamic>).map((e) => e as String).toList(),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      baseExperience: (json['baseExperience'] as num).toInt(),
    );

Map<String, dynamic> _$$PokemonResponseImplToJson(
        _$PokemonResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'generation': instance.generation,
      'abilities': instance.abilities,
      'types': instance.types,
      'stats': instance.stats,
      'height': instance.height,
      'weight': instance.weight,
      'baseExperience': instance.baseExperience,
    };

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      name: json['name'] as String,
      baseStat: (json['baseStat'] as num).toInt(),
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'baseStat': instance.baseStat,
    };
