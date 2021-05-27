// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'middle_area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Area _$AreaFromJson(Map<String, dynamic> json) {
  return Area(
    areaResults: json['results'] == null
        ? null
        : AreaResults.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      'results': instance.areaResults,
    };

AreaResults _$AreaResultsFromJson(Map<String, dynamic> json) {
  return AreaResults(
    resultsAvailable: json['results_available'] as int,
    middleAreas: (json['middle_area'] as List)
        ?.map((e) =>
            e == null ? null : MiddleArea.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AreaResultsToJson(AreaResults instance) =>
    <String, dynamic>{
      'results_available': instance.resultsAvailable,
      'middle_area': instance.middleAreas,
    };

MiddleArea _$MiddleAreaFromJson(Map<String, dynamic> json) {
  return MiddleArea(
    code: json['code'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$MiddleAreaToJson(MiddleArea instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
