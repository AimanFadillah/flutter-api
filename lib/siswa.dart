import 'package:android_api/controllers/SiswaController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Siswa extends StatelessWidget {
  const Siswa({super.key});

  @override
  Widget build(BuildContext context) {
    SiswaController siswaController = Get.put(SiswaController());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(10),
        child:Obx(() => siswaController.loading.value ?
        const Center(
          child: CircularProgressIndicator(),
        ) :
        ListView.builder(
          itemCount: siswaController.list1.value.length,
          itemBuilder:(context,i) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("${i + 1}"),
              ),
              title: Text("${siswaController.list1.value[i].nama}"),
              subtitle: Text("${siswaController.list1.value[i].kelas}"),
            );



          },
        )
        ),
      ),
    );;
  }
}
