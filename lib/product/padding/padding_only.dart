import 'package:flutter/rendering.dart';

class PagePaddingOnly extends EdgeInsets {
  const PagePaddingOnly.onlyBottomNormal() : super.only(bottom: 12);
  const PagePaddingOnly.onlyTopNormal() : super.only(top: 12);
  const PagePaddingOnly.onlyTopAndBotNormal() : super.only(top: 12);
}
