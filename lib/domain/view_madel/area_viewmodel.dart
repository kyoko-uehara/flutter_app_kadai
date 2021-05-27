import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/middle_area_model.dart';
import 'package:flutter_app_kadai/domain/view_madel/repository/area_repository.dart';

class AreaViewmodel extends ChangeNotifier {
  final AreaRepository _areaRepository = AreaRepository();

  //エリア検索結果（２０件）
  List<MiddleArea> _middleArea = List();
  List<MiddleArea> get middleArea => _middleArea;
  //エリア検索画面表示用のリスト
  List<MiddleArea> _middleAreaDisp = List();
  List<MiddleArea> get middleAreaDisp => _middleAreaDisp;

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  int _start = 1;
  int get start => _start;
  // クエリー条件にマッチする、検索結果の全件数
  int _resultsAvailable = 0;
  int get resultsAvailable => _resultsAvailable;
  //ネットワークの接続確認//
  bool _isConnection = true;
  bool get isConnection => _isConnection;

  //////////////
  //中エリア検索//
  //////////////
  Future<void> getArea({@required int start}) async {
    _isLoading = true;
    notifyListeners();

    //クエリー条件にマッチする、検索結果の全件数
    AreaResults areaResults = await _areaRepository.getResultsAvailable();
    _resultsAvailable = areaResults.resultsAvailable;

    //中エリア検索//
    // 20件ごと取得する
    _middleArea = await _areaRepository.getArea(start: start);

    //エリア検索画面表示用のリストに追加
    if(start == 1){
      _middleAreaDisp = List();
      _middleArea.forEach((area) {
        _middleAreaDisp.add(MiddleArea(code: area.code ?? "", name: area.name ?? ""));
      });
    }
    if(start < _middleAreaDisp.length){
      _middleArea.forEach((area) {
        _middleAreaDisp.add(MiddleArea(code: area.code ?? "", name: area.name ?? ""));
      });
    }

    if (_resultsAvailable > middleAreaDisp.length) {
      _start = start + 20;
    } else {
      _start = _resultsAvailable;
    }
    _isLoading = false;
    notifyListeners();
  }

  //ネットワークの接続確認//
  Future<void> getConnectionStatus() async{
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('getConnectionStatus connected');
        _isConnection = true;
        notifyListeners();
      }
      print('getConnectionStatus not connected');
      _isConnection = false;
      notifyListeners();

    } on SocketException catch (_) {
      print('getConnectionStatus SocketException');
      _isConnection = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _areaRepository.dispose();
    super.dispose();
  }
}
