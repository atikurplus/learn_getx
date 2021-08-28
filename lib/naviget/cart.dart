import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/statemegment/home_controller.dart';

class Cart extends GetWidget<HomeConroller> {
  static const id = '/Cart';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Cart'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${controller.status}'),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Go Back'),
              ),
            ],
          ),
        ),
      );
}
