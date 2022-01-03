import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pembelajaran/pages/game_page.dart';
import 'package:pembelajaran/pages/home_page.dart';
import 'package:pembelajaran/pages/materi_page.dart';
import 'package:pembelajaran/pages/tugas_page.dart';
import 'pages/login_page.dart';
import 'services/get/get_auth.dart';
import 'services/get/get_store.dart';

Future<void> main() async {
  await GetStorage.init();
  await boxUser();
  final userController = Get.put(UserController());
  runApp(GetMaterialApp(
    home: GetBuilder<UserController>(
        builder: (_) =>
            (userController.user == null) ? LoginPage() : HomePage()),
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new HomePage(),
      '/materi': (BuildContext context) => new MateriPage(),
      '/game': (BuildContext context) => new GamePage(),
      '/tugas': (BuildContext context) => new TugasPage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}


// main color 

// green    00917c
// blue     11698e
// orange   f58634
// red      ff005c
// purple   6930c3