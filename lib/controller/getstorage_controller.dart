import 'package:get/get.dart';

class GetStorageController extends GetxController {
  var email = ''.obs;
  void updateEmail(String newEmail) {
    email.value = newEmail;
  }
}
