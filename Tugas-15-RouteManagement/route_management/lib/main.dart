import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management/Tugas15/pages/page_1.dart';
import 'package:route_management/Tugas15/routes/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PageOne(),
      getPages: PageRouteApp.pages,
    );
  }
}
