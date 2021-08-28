import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/getstorage_home_page.dart';
import 'package:learn_getx/home_binding.dart';
import 'package:learn_getx/naviget/cart.dart';
import 'package:learn_getx/naviget/naviget_home_page.dart';
import 'package:learn_getx/naviget/shop.dart';
import 'package:learn_getx/snackbar/snackbar_home%20_page.dart';
import 'package:learn_getx/statemegment/new_home_page.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: GetStorageHomePage.id,
        initialBinding: HomeBinding(),
        smartManagement: SmartManagement.full,
        getPages: [
          GetPage(
            name: GetStorageHomePage.id,
            page: () => GetStorageHomePage(),
            binding: HomeBinding(),
          ),
          GetPage(name: HomePage.id, page: () => HomePage()),
          GetPage(name: Shop.id, page: () => Shop()),
          GetPage(name: Cart.id, page: () => Cart()),
          GetPage(name: SnackBarPage.id, page: () => SnackBarPage()),
          GetPage(
              name: NewHomePage.id,
              page: () => NewHomePage(),
              binding: HomeBinding())
        ],
      );
}
