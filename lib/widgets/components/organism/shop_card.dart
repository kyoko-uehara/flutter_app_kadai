import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/domain/view_madel/model/gourmet_model.dart';
import 'package:flutter_app_kadai/domain/view_madel/util/image_from_url.dart';
import 'package:flutter_app_kadai/widgets/components/atoms/style.dart';
import 'package:flutter_app_kadai/widgets/components/molecule/shop_tile_desc.dart';
import 'package:flutter_app_kadai/widgets/pages/shop_web_page.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;

  const ShopCard({Key key, this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => _onShopClicked(context, shop),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  shop.genre.genreName,
                  style: textTheme.caption.copyWith(
                    fontFamily: RegularFont,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  shop.name,
                  textAlign: TextAlign.left,
                  style: textTheme.headline5.copyWith(
                    fontFamily: BoldFont,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageFromUrl(
                        imageUrl: shop.photo.photoPc.photoPcL,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ShopTileDesc(
                          shop: shop,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onShopClicked(BuildContext context, Shop shop) {
    return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShopWebPage(
            shop: shop,
          ),
        ));
  }
}
