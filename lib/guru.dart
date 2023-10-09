import 'package:android_api/controllers/guruController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Guru extends StatelessWidget {
  const Guru({super.key});

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
          itemCount: guruController.data.value.length,
          itemBuilder:(context,i) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("${guruController.data.value[i].firstname}"),
              ),
              title: Text("${guruController.data.value[i].createdAt}"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(guruController.data[i].posts != null)
                    for(var post in guruController.data[i].posts!) Text("${post.title}")
                ],
                )
            );
          },
        )
        ),
      ),
    );
  }
}
