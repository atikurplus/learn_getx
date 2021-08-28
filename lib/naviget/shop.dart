import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/naviget/cart.dart';
import 'package:learn_getx/statemegment/home_controller.dart';

class Shop extends StatelessWidget {
  static const id = '/Shop';
  // HomeConroller homeConroller = Get.find<HomeConroller>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Shope'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(Get.arguments),
              RaisedButton(
                onPressed: () {
                  Get.toNamed(Cart.id);
                },
                child: Text('Go to Cart'),
              ),
              RaisedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Back to Home'),
              ),
            ],
          ),
        ),
      );
}
