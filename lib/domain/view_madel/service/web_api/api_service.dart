import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  static const BASE_URL = "https://webservice.recruit.co.jp/hotpepper";
  static const API_KEY = "12345";

  static ApiService create(){
    final client = ChopperClient(
      baseUrl: BASE_URL,
      services: [
        _$ApiService()
      ],
      converter: JsonConverter(),
    );
    return _$ApiService(client);
  }

  //中エリアマスタAPI
  @Get(path: "/middle_area/v1")
  Future<Response> getMiddleArea(
      { @Query("key") String key = ApiService.API_KEY,
        @Query("large_area") String largeArea = "Z011",
        @Query("start") int start,
        @Query("count") int count,
        @Query("format") String format = "json",
      });

  //グルメリサーチAPI
  @Get(path: "/gourmet/v1")
  Future<Response> getGourmetShop(
      { @Query("key") String key = ApiService.API_KEY,
        @Query("middle_area") String areaCode,
        @Query("start") int start,
        @Query("count") int count = 20,
        @Query("format") String format = "json",
      });
}