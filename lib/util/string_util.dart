import 'package:intl/intl.dart';

/// 3桁ごとにカンマ区切りした文字列に変換する
///
/// [ammount] カンマ区切りしたい金額（[ammount]が0未満のとき、''が返る）
String toDividByComma(int ammount) {
  if (ammount < 0) {
    return '';
  }

  return NumberFormat("#,###").format(ammount);
}
