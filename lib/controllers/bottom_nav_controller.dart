import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class BottomNavController extends GetxController {
  var index = 0.obs;
  changeScreen(int value) {
    index.value = value;
  }
}
