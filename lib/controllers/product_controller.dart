import 'package:get/get.dart';

class ProductManageController extends GetxController {
  RxInt quantity = 1.obs;

  increment() {
    quantity.value = quantity.value += 1;
  }

  decrement() {
    if (quantity.value <= 1) {
      quantity.value = 1;
    } else {
      quantity.value = quantity.value -= 1;
    }
  }
}
