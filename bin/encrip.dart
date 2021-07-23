import 'dart:io';
import 'dart:isolate';
import 'package:image/image.dart';

class DecodeParam {
  final File file;
  final SendPort sendPort;
  DecodeParam(this.file, this.sendPort);
}

void decodeIsolate(DecodeParam param) {
  // Read an image from file (webp in this case).
  // decodeImage will identify the format of the image and use the appropriate
  // decoder.
  var image = decodeImage(param.file.readAsBytesSync());
  // Resize the image to a 120x? thumbnail (maintaining the aspect ratio).
  var thumbnail = copyResize(image, width: 120);
  param.sendPort.send(thumbnail);
}

// Decode and process an image file in a separate thread (isolate) to avoid
// stalling the main UI thread.
void main() async {
  var receivePort = ReceivePort();

  await Isolate.spawn(decodeIsolate,
      DecodeParam(File('asset/img/brook_test.png'), receivePort.sendPort));

  // Get the processed image from the isolate.
  var image = await receivePort.first as Image;

  await File('thumbnail.png').writeAsBytes(encodePng(image));
}
