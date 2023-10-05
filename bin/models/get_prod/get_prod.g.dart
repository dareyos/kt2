// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_prod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProdImpl _$$GetProdImplFromJson(Map<String, dynamic> json) =>
    _$GetProdImpl(
      cars: (json['cars'] as List<dynamic>?)
              ?.map((e) => Cars.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetProdImplToJson(_$GetProdImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
