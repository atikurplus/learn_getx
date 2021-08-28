import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/statemegment/home_controller.dart';

class NewHomePage extends StatelessWidget {
  static const id = '/New_Home_page';

  // final HomeConroller homeConroller = Get.put(HomeConroller(),permanent: true);
  final HomeConroller homeConroller = Get.find<HomeConroller>();
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
              GetBuilder<HomeConroller>(
                id: "flower_Status",
                builder: (_) {
                  print('folower Widget');
                  return Text("Flowers: ${homeConroller.flowers}");
                },
              ),
              SizedBox(
                height: 10,
              ),
              // GetX<HomeConroller>(
              //   builder: (_) {
              //     print('uesr Status Widget');
              //     return Text(
              //       "User Status: ${homeConroller.status}",
              //     );
              //   },
              // ),
              Obx(() {
                return Text("User Status: ${homeConroller.status}");
              }),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  homeConroller.updateStatus("offline");
                },
                child: Text('Update Status'),
              )
            ],
          ),
        ),
      );
}
