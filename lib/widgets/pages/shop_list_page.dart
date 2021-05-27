import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/gourmet_model.dart';
import 'package:flutter_app_kadai/main.dart';
import 'package:flutter_app_kadai/widgets/components/organism/shop_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShopListPage extends ConsumerWidget {
  final String areaCode;
  final String areaName;

  const ShopListPage({Key key, this.areaCode, this.areaName}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _shopProvider = watch(shopProvider);

    print("GourmetListScreen(areaCode): $areaCode");

    if (!_shopProvider.isLoading) {
      if (_shopProvider.shopInfo.isEmpty ||
          _shopProvider.areaCode != areaCode) {
        Future(() => _shopProvider.getShop(
              areaCode: areaCode,
              areaName: areaName,
              start: 1,
            ));
      }
    }

    print("ShopListScreen start");

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(areaName),
        centerTitle: true,
      ),
      body: _shopProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : (_shopProvider.shopInfo.length > 0)
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    final Shop shopInfo = _shopProvider.shopInfo[index];
                    return ShopCard(
                      shop: shopInfo,
                    );
                  },
                  itemCount: _shopProvider.shopInfo.length,
                )
              : Center(
                  child: Text("No Area Name Object"),
                ),
    ));
  }
}
