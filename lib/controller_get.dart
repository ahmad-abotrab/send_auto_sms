import 'package:get/get.dart';

class ControllerGet extends GetxController {
  String state = '';
  @override
  void onInit() {
    state = '';
    super.onInit();
  }
  updateValue(value){
    state = value;
  }
}
