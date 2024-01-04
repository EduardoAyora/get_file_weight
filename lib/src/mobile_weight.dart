// mobile_user_agent.dart
import 'dart:io' as io;
import 'base_weight.dart';

class WeightImpl implements BaseWeight {
  @override
  Future<int> getWeight(pickedFile) async {
    io.File imageFile = io.File(pickedFile.path);
    int fileSize = await imageFile.length();
    return fileSize;
  }
}
