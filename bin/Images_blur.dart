//--------------Making blur image------------------------

import 'dart:io';
import 'package:image/image.dart';

void main() {
  // Read a jpeg image from file.
  Image image = decodePng(File('asset/img/brook_test.png').readAsBytesSync());

  Image thumbnail = gaussianBlur(image, 0);

  // Save the thumbnail as a PNG.
  File('thumbnail-test.png').writeAsBytesSync(encodePng(thumbnail));
}
