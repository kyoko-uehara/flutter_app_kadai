import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/gourmet_model.dart';
import 'package:flutter_app_kadai/domain/view_madel/service/web_api/api_service.dart';
import 'package:flutter_app_kadai/domain/view_madel/util/extensions.dart';
import 'package:flutter_app_kadai/main.dart';

class ShopRepository {
  final ApiService _apiService = ApiService.create();

  Future<List<Shop>> getShop(
      {@required String areaCode, String areaName, int start}) async {
    List<Shop> shops = List<Shop>();
    Response response;
    print("ShopRepository(areaCode): $areaCode");

    try {
      //////////////
      //グルメサーチ//
      //////////////
      response =
          await _apiService.getGourmetShop(areaCode: areaCode, start: start);

      if (response.isSuccessful) {
        final responseBody = response.body;
        print("responseBody: $responseBody");

        shops = await insertAndReadShopFromDB(responseBody);

        print("result(shop): $shops");
      } else {
        final errorCode = response.statusCode;
        final error = response.error;
        print("response is not successful: $errorCode / $error");
      }
    } on Exception catch (e) {
      print("error: $e");
    }

    print("[ShopRepository]getShop: $start");
    return shops;
  }

  Future<GourmetResults> getResultsAvailable() async {
    GourmetResults gourmetResults;
    Response response;

    try {
      response = await _apiService.getMiddleArea(start: 1, count: 1);

      if (response.isSuccessful) {
        final responseBody = response.body;
        print("responseBody: $responseBody");

        gourmetResults = Gourmet.fromJson(responseBody).gourmetResults;
      } else {
        final errorCode = response.statusCode;
        final error = response.error;
        print("response is not successful: $errorCode / $error");
      }
    } on Exception catch (e) {
      print("error: $e");
    }
    return gourmetResults;
  }

  void dispose() {
    _apiService.dispose();
  }

  Future<List<Shop>> insertAndReadShopFromDB(responseBody) async {
    final dao = myDatabase.dao;
    final shops = Gourmet.fromJson(responseBody).gourmetResults.shops;

    // Webから取得したDartのモデルクラス(MiddleArea）を
    // DBのテーブルクラス（MiddleAreaRecord）に変換してDBへ登録 ＆ DBから取得
    final shopRecords =
        await dao.insertAndReadShopFromDB(shops.toShopRecords(shops));

    // DBから取得したデータをデータモデルクラスに再変化して返す
    return shopRecords.toShopInfos(shopRecords);
  }
}
