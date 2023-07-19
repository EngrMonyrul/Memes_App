import 'package:flutter/foundation.dart';

class ImageNumber with ChangeNotifier {
  int _imageNumber = 0;
  int get imageNumber => _imageNumber;

  void setImageNumber() {
    _imageNumber++;
  }
}
