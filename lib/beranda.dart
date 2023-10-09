import 'package:android_api/controllers/SiswaController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    SiswaController siswaController = Get.put(SiswaController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api",style: TextStyle(),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextButton(onPressed: () => Get.toNamed("/siswa"), child: const Text("Siswa")),
            TextButton(onPressed: () => Get.toNamed("/guru"), child: const Text("Guru")),
            TextButton(onPressed: () => Get.toNamed("/guru2"), child: const Text("screen 3"))
          ],
        ),
      ),
    );
  }
}
