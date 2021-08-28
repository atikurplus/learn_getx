import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarPage extends StatelessWidget {
  static const id = '/SnackBar_Home_page';

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Getx SnackBar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Action Snackbar'),
                onPressed: () {
                  final text = 'some information to the user';
                  final snackBar = SnackBar(
                    backgroundColor: Colors.black45,
                    content: Text(text),
                    action: SnackBarAction(
                      label: "dismesed",
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(snackBar);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text('Simple Snackbar'),
                onPressed: () {
                  final text = 'some information to the user';
                  final snackBar = SnackBar(content: Text(text));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                  ));
                },
                child: Text('Bottom sheet'),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text('Show Dialog'),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Finshed",
                    content: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          child: Icon(
                            Icons.check,
                            size: 30.0,
                          ),
                        ),
                        Text('Game over, Try agen and injoy the game'),
                      ],
                    ),
                    radius: 10.0,
                    textCancel: 'NO',
                    textConfirm: 'Yes',
                    onConfirm: () {
                      Get.back();
                    },
                    barrierDismissible: true,
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text('Show SnackBar'),
                onPressed: () {
                  Get.snackbar(
                    'This is a snackBar',
                    'Form Getx',
                    snackPosition: SnackPosition.BOTTOM,
                    borderRadius: 10.0,
                    icon: Icon(Icons.check),
                    margin: EdgeInsets.all(20.0),
                    mainButton: TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Finshed'),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
}
