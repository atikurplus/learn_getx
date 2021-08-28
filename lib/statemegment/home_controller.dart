import 'package:get/get.dart';

class HomeConroller extends GetxController {
  var status = "online".obs;
  int flowers = 50;

  @override
  void onInit() {
    // ever(status, (_) {
    //   print('status value change');
    // });

    // once(status, (_) {
    //   print('changed the status');
    // });
    debounce(status, (_) {
      print('debounce');
    }, time: Duration(seconds: 3));
    super.onInit();
  }

  void updateStatus(String newStatus) {
    status.value = newStatus;
    // update(['flower_Status']);
  }
}
