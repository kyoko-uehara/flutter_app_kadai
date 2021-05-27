import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/widgets/pages/shop_list_page.dart';

class AreaCard extends StatelessWidget {
  final String areaName;
  final String areaCode;

  const AreaCard({Key key, this.areaName, this.areaCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(areaName),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShopListPage(
                  areaCode: areaCode,
                  areaName: areaName,
                ),
              ));
        },
      ),
    );
  }
}
