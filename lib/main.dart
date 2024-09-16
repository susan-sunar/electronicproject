
import 'package:electronicproject/pages/addtocart.dart';
import 'package:electronicproject/pages/catogery.dart';
import 'package:electronicproject/pages/homepage.dart';
import 'package:electronicproject/pages/opening.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/opening",
      getPages: [
         GetPage(name: "/opening", page: ()=>OpeningPage()),
        GetPage(name: "/home", page: ()=>HomePage()),
         GetPage(name: "/category", page: ()=>CategoryPage()),
         GetPage(name: "/cart", page: ()=>Addtocart()),
      ],

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

