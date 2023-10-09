import 'package:android_api/controllers/guruController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Guru2 extends StatelessWidget {
  const Guru2({super.key});

  @override
  Widget build(BuildContext context) {
    GuruController guruController = Get.put(GuruController());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(10),
        child:Obx(() => guruController.loading.value ?
        const Center(
          child: CircularProgressIndicator(),
        ) :
        ListView.builder(
          itemCount: guruController.data.length,
          itemBuilder:(context,i) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("${guruController.data[i].firstname}"),
              ),
              title: TextButton(child: Text("${guruController.data[i].createdAt}"),onPressed: () {
                guruController.show.value = i;
                Get.toNamed("/show");
              }),
            );
          },
        )
        ),
      ),
    );
  }
}
