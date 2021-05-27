import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("インターネットの接続エラー"),
      content: Text("インターネットに接続てきませんできた。"),
      actions: <Widget>[
        // ボタン領域
        FlatButton(
          child: Text("Cancel"),
          //TODO インターネットの再接続キャンセル処理未実装
          onPressed: () => Navigator.pop(context),
        ),
        FlatButton(
          child: Text("再実行"),
          //TODO インターネットの再接続処理未実装
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
