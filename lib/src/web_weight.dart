import 'dart:html' as html;
import 'dart:typed_data';

import 'base_weight.dart';

class WeightImpl implements BaseWeight {
  @override
  Future<int> getWeight(pickedFile) async {
    final Uint8List uint8List = await pickedFile.readAsBytes();
    final html.Blob blob =
        html.Blob([Uint8List.fromList(uint8List).buffer.asUint8List()]);
    final String fileName = pickedFile.name;

    final html.File file =
        html.File([blob], fileName, {'type': pickedFile.mimeType});
    int fileSize = file.size;
    return fileSize;
  }
}