import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/gourmet_model.dart';
import 'package:flutter_app_kadai/widgets/components/molecule/shop_info.dart';

class ShopTileDesc extends StatelessWidget {
  final Shop shop;

  const ShopTileDesc({Key key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShopInfo(
          info: shop.budget.budgetAverage,
          infoIcon: Icon(Icons.attach_money),
        ),
        const SizedBox(
          height: 2.0,
        ),
        ShopInfo(
          info: shop.open,
          infoIcon: Icon(Icons.access_time),
        ),
        const SizedBox(
          height: 2.0,
        ),
        ShopInfo(
          info: shop.access,
          infoIcon: Icon(Icons.directions_subway_outlined),
        ),
        const SizedBox(
          height: 2.0,
        ),
        ShopInfo(
          info: shop.address,
          infoIcon: Icon(Icons.place_outlined),
        ),
      ],
    );
  }
}
