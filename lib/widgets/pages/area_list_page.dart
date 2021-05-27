import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/middle_area_model.dart';
import 'package:flutter_app_kadai/main.dart';
import 'package:flutter_app_kadai/widgets/components/organism/area_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AreaListPage extends ConsumerWidget {
  const AreaListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader reader) {
    final _areaProvider = reader(areaProvider);

    //TODO インタネットの接続確認
    // Future(() => _areaProvider.getConnectionStatus());
    // if (!_areaProvider.isConnection) {
    //   return SafeArea(
    //       child: Scaffold(
    //           appBar: AppBar(
    //             title: Text("エリア検索"),
    //             centerTitle: false,
    //           ),
    //           body: ShowDialog(),
    //       ));
    // }

    //TODO ２回目以降はDBより取得した値を表示する
    //TODO 非同期処理がうまくいっておらず、重複して出力されている
    if (!_areaProvider.isLoading) {
      if (_areaProvider.middleArea.isEmpty) {
        Future(() => _areaProvider.getArea(start: 1,));
      }
    }

    print("AreaListScreen start");
    int length = _areaProvider.middleAreaDisp?.length ?? 0;
    int resultsAvailable = _areaProvider.resultsAvailable;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("エリア検索"),
        centerTitle: false,
      ),
      body: _areaProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : (length > 0)
              ? ListView.builder(
                  itemCount: length,
                  itemBuilder: (BuildContext context, int index) {
                    //最終行
                    if (resultsAvailable > length) {
                      //最終行
                      if (index + 1 == length) {
                        //次の２０件を取得
                        Future(() => _areaProvider.getArea(
                              start: _areaProvider.start,
                            ));

                      }
                    } else if (index + 1 > length) {
                      // ローディング表示より先は無し
                      return null;
                    }
                    // アイテムがあるので返す
                    //TODO 行を追加する時に再描画されて、１行目に戻ってってしまう修正をする
                    final MiddleArea area = _areaProvider.middleAreaDisp[index];
                    return AreaCard(
                      areaName: area.name,
                      areaCode: area.code,
                    );
                  },
                )
              : Center(
                  child: Text("No Area Name Object"),
                ),
    ));
  }
}
