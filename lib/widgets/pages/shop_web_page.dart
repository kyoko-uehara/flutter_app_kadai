import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/gourmet_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShopWebPage extends StatelessWidget {
  final Shop shop;

  const ShopWebPage({Key key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(shop.name),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: shop.urls.urlsPc,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    ));
  }
}
