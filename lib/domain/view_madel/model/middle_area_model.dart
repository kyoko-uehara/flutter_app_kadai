import 'package:json_annotation/json_annotation.dart';

part 'middle_area_model.g.dart';

@JsonSerializable()
class Area {
  @JsonKey(name : "results") final AreaResults areaResults;

  Area({this.areaResults});

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
  Map<String, dynamic> toJson() =>_$AreaToJson(this);
}

@JsonSerializable()
class AreaResults {
  @JsonKey(name: "results_available") final int resultsAvailable;
  @JsonKey(name : "middle_area") final List<MiddleArea> middleAreas;

  AreaResults({this.resultsAvailable,this.middleAreas});

  factory AreaResults.fromJson(Map<String, dynamic> json) => _$AreaResultsFromJson(json);
  Map<String, dynamic> toJson() =>_$AreaResultsToJson(this);
}

@JsonSerializable()
class MiddleArea {
  @JsonKey(name : "code") final String code;
  @JsonKey(name : "name") final String name;

  MiddleArea({this.code, this.name});

  factory MiddleArea.fromJson(Map<String, dynamic> json) => _$MiddleAreaFromJson(json);
  Map<String, dynamic> toJson() =>_$MiddleAreaToJson(this);
}
