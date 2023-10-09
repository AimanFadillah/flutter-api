import 'package:android_api/beranda.dart';
import 'package:android_api/guru.dart';
import 'package:android_api/guru2.dart';
import 'package:android_api/show.dart';
import 'package:android_api/siswa.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Api',
      initialRoute: "/",
      getPages: [
          GetPage(name: "/siswa", page: () => const Siswa()),
          GetPage(name: "/guru", page: () => const Guru()),
          GetPage(name: "/guru2", page: () => const Guru2()),
          GetPage(name: "/show", page: () => const Show()),
      ],
      home:const Beranda(),
    );
  }
}

