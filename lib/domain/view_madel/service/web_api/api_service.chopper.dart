// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<dynamic>> getMiddleArea(
      {String key = ApiService.API_KEY,
      String largeArea = "Z011",
      int start,
      int count,
      String format = "json"}) {
    final $url = '/middle_area/v1';
    final $params = <String, dynamic>{
      'key': key,
      'large_area': largeArea,
      'start': start,
      'count': count,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getGourmetShop(
      {String key = ApiService.API_KEY,
      String areaCode,
      int start,
      int count = 20,
      String format = "json"}) {
    final $url = '/gourmet/v1';
    final $params = <String, dynamic>{
      'key': key,
      'middle_area': areaCode,
      'start': start,
      'count': count,
      'format': format
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
