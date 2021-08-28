import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/naviget/shop.dart';

class HomePage extends StatelessWidget {
  static const id = '/Home_page';

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
              RaisedButton(
                onPressed: () {
                  // Get.to(Shop.id);
                  Get.toNamed(Shop.id, arguments: 'Flutter');
                },
                child: Text('Naviget to shop'),
              )
            ],
          ),
        ),
      );
}
