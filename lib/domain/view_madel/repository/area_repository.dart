import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/middle_area_model.dart';
import 'package:flutter_app_kadai/domain/view_madel/service/db/database.dart';
import 'package:flutter_app_kadai/domain/view_madel/service/web_api/api_service.dart';
import 'package:flutter_app_kadai/domain/view_madel/util/extensions.dart';
import 'package:flutter_app_kadai/main.dart';

class AreaRepository {
  final ApiService _apiService = ApiService.create();

  Future<List<MiddleArea>> getArea({@required int start}) async {
    List<MiddleArea> middleAreas = List<MiddleArea>();
    Response response;

    try {

      middleAreas = await selectMiddleArea();

      //////////////
      //中エリア検索//
      //////////////
      response = await _apiService.getMiddleArea(start: start, count: 20);

      if (response.isSuccessful) {
        final responseBody = response.body;
        print("responseBody: $responseBody");

        middleAreas = await insertAndReadMiddleAreaFromDB(responseBody, start);
      } else {
        final errorCode = response.statusCode;
        final error = response.error;
        print("response is not successful: $errorCode / $error");
      }
    } on Exception catch (e) {
      print("error: $e");
    }

    print("[AreaRepository]getArea: $start");
    return middleAreas;
  }

  Future<AreaResults> getResultsAvailable() async {
    AreaResults areaResults;
    Response response;

    try {
      response = await _apiService.getMiddleArea(start: 1, count: 1);

      if (response.isSuccessful) {
        final responseBody = response.body;
        print("responseBody: $responseBody");

        areaResults = Area.fromJson(responseBody).areaResults;
      } else {
        final errorCode = response.statusCode;
        final error = response.error;
        print("response is not successful: $errorCode / $error");
      }
    } on Exception catch (e) {
      print("error: $e");
    }
    return areaResults;
  }

  void dispose() {
    _apiService.dispose();
  }

  Future<List<MiddleArea>> selectMiddleArea() async{
    final dao = myDatabase.dao;
    // DBから取得したデータをデータモデルクラスに再変化して返す
    List<MiddleAreaRecord> records = await dao.middleAreaFromDB;
    return records.toMiddleAreas(records);
  }

  Future<List<MiddleArea>> insertAndReadMiddleAreaFromDB(
      responseBody, start) async {
    final dao = myDatabase.dao;
    final areaResults = Area.fromJson(responseBody).areaResults;
    final middleAreas = areaResults.middleAreas;

    // Webから取得したDartのモデルクラス(MiddleArea）を
    // DBのテーブルクラス（MiddleAreaRecord）に変換してDBへ登録 ＆ DBから取得
    final middleAreaRecords = await dao.insertAndReadMiddleAreaFromDB(
        middleAreas.toMiddleAreaRecords(middleAreas), start);

    // DBから取得したデータをデータモデルクラスに再変化して返す
    return middleAreaRecords.toMiddleAreas(middleAreaRecords);
  }
}
