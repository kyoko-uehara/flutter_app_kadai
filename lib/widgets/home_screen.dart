import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/widgets/pages/area_list_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: AreaListPage(),
      ),
    );
  }
}
