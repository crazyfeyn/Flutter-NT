import 'package:flutter/material.dart';

extension func on BuildContext {
  height() {
    return MediaQuery.of(this).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(this).viewPadding.top;
  }

  width() {
    return MediaQuery.of(this).size.width;
  }
}
