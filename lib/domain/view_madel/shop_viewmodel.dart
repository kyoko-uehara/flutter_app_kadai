import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/gourmet_model.dart';
import 'package:flutter_app_kadai/domain/view_madel/repository/shop_repository.dart';

class ShopViewmodel extends ChangeNotifier {
  final ShopRepository _shopRepository = ShopRepository();

  List<Shop> _shopInfo = List();
  List<Shop> get shopInfo => _shopInfo;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String _areaCode = "";
  String get areaCode => _areaCode;
  int _start = 1;
  int get start => _start;

  // クエリー条件にマッチする、検索結果の全件数
  int _resultsAvailable = 0;
  int get resultsAvailable => _resultsAvailable;

  //////////////
  //グルメサーチ//
  //////////////
  Future<void> getShop(
      {@required String areaCode, String areaName, int start}) async {
    _start = start;
    _isLoading = true;
    _areaCode = areaCode;
    notifyListeners();

    //クエリー条件にマッチする、検索結果の全件数
    GourmetResults areaResults = await _shopRepository.getResultsAvailable();
    _resultsAvailable = areaResults.resultsAvailable;

    //グルメサーチ//
    _shopInfo = await _shopRepository.getShop(
        areaCode: areaCode, areaName: areaName, start: start);

    _isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    _shopRepository.dispose();
    super.dispose();
  }
}
