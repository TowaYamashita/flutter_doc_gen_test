import 'package:flutter/material.dart';

/// アプリ共通のAppBar
///
/// [title] AppBarに表示するタイトル（画面のwidthからはみ出ない程度の文字サイズに自動調整）
///
/// [needBackButton] 戻るボタンや閉じるボタンを表示するかどうか（デフォルトは表示）
class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    Key? key,
    required this.title,
    this.needBackButton = true,
  }) : super(key: key);

  final String title;
  final bool needBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(title),
      ),
      automaticallyImplyLeading: needBackButton,
    );
  }
}
