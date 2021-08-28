import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_getx/controller/getstorage_controller.dart';

class GetStorageHomePage extends StatelessWidget {
  static const id = '/GetStorage_Home_page';

  final GetStorageController getStorageController =
      Get.find<GetStorageController>();

  final storage = GetStorage();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Getx'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email addres",
                  ),
                ),
              ),
              FlatButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                child: Text('Submit'),
                onPressed: () {
                  if (GetUtils.isEmail(emailController.text)) {
                    storage.write('email', emailController.text);
                    emailController.text = '';
                  } else {
                    Get.snackbar(
                      'Incorrect email',
                      'Enter the valid id',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                child: Text('View'),
                onPressed: () {
                  getStorageController.updateEmail('${storage.read('email')}');
                },
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() => Text('Email addres: ${getStorageController.email}')),
            ],
          ),
        ),
      );
}
