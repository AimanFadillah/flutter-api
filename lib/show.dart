import 'package:android_api/controllers/guruController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    GuruController guruController = Get.put(GuruController());
    var show = guruController.show.value;
    return Scaffold(
      appBar: AppBar(),
        body: Container(
          margin: const EdgeInsets.all(10),
          child:Obx(() => guruController.loading.value ?
          const Center(
            child: CircularProgressIndicator(),
          ) :
          ListView.builder(
            itemCount: guruController.data[show].posts?.length,
            itemBuilder:(context,i) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text("${guruController.data[show].posts?[i].id}"),
                ),
                title: Text("${guruController.data[show].posts?[i].title}"),
                subtitle: Text("${guruController.data[show].posts?[i].content}"),
              );
            },
          )
          ),
        ),
    );
  }
}
