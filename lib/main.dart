import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/area_viewmodel.dart';
import 'package:flutter_app_kadai/domain/view_madel/service/db/database.dart';
import 'package:flutter_app_kadai/domain/view_madel/shop_viewmodel.dart';
import 'package:flutter_app_kadai/widgets/components/atoms/style.dart';
import 'package:flutter_app_kadai/widgets/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final areaProvider = ChangeNotifierProvider((ref) => AreaViewmodel());
final shopProvider = ChangeNotifierProvider((ref) => ShopViewmodel());
MyDatabase myDatabase;

void main() {
  myDatabase = MyDatabase();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "グルメサーチ",
      theme: ThemeData(
        fontFamily: RegularFont,
      ),
      home: HomeScreen(),
    );
  }
}
