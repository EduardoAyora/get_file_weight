import 'package:get_file_weight/get_file_weight.dart';

void main() {
  // final imagePicker = ImagePicker();
  // final xFile = await imagePicker.pickImage(source: ImageSource.gallery);
  var xFile = 'stub';

  var fileWeight = FileWeight();
  print('Weight: ${fileWeight.getWeight(xFile)} bytes');
}
