import 'package:get/get.dart';
import 'package:learn_getx/controller/getstorage_controller.dart';
import 'package:learn_getx/statemegment/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(HomeConroller(), permanent: true);
    Get.lazyPut(() => HomeConroller(), fenix: true);
    Get.lazyPut(() => GetStorageController(), fenix: true);
  }
}
