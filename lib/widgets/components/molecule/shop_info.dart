import 'package:flutter/material.dart';
import 'package:flutter_app_kadai/widgets/components/atoms/style.dart';

class ShopInfo extends StatelessWidget {
  final String info;
  final Icon infoIcon;

  const ShopInfo({Key key, this.infoIcon, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: infoIcon,
          ),
        ),
        Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                info,
                style: textTheme.bodyText2.copyWith(
                  fontFamily: RegularFont,
                  fontSize: 12.0,
                ),
              ),
            )),
      ],
    );
  }
}
