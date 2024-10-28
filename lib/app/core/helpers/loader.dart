import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class Loader {
  Loader._();

  static final bool _open = Grock.isOpenGrockOverlay();

  static void show() {
    Grock.showGrockOverlay(
      child: Container(
        color: Colors.black54,
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static void hide() {
    if (_open) {
      Grock.closeGrockOverlay();
    }
  }
}
