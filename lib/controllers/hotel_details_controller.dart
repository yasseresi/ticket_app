



import 'package:get/state_manager.dart';

class HotelDetailsController extends GetxController{



    var isExpanded = false.obs;
  changeState() {
      isExpanded.value = !isExpanded.value;
  }
}