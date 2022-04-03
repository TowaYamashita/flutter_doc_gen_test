


# toDividByComma function






    *[<Null safety>](https://dart.dev/null-safety)*




[String](https://api.flutter.dev/flutter/dart-core/String-class.html) toDividByComma
([int](https://api.flutter.dev/flutter/dart-core/int-class.html) ammount)



<p>3桁ごとにカンマ区切りした文字列に変換する</p>
<p><code>ammount</code> カンマ区切りしたい金額（<code>ammount</code>が0未満のとき、''が返る）</p>



## Implementation

```dart
String toDividByComma(int ammount) {
  if (ammount < 0) {
    return '';
  }

  return NumberFormat("#,###").format(ammount);
}
```







