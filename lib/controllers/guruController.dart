import 'dart:convert';

import 'package:android_api/models/guruModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as fetch ;

class GuruController extends GetxController {
  static final GuruController _instance = GuruController._internal();

  factory GuruController() {
    return _instance;
  }

  GuruController._internal();

  RxInt show = RxInt(0);
  RxBool loading = RxBool(false);
  RxList<GuruModel> data = RxList<GuruModel>([]);

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData () async {
      try{
        loading.value = true;
        var response = await fetch.get(Uri.parse("https://mocki.io/v1/9491c6c2-070e-42ef-9668-00d55901d58b"));
        loading.value = false;
        if(response.statusCode == 200){
          final dataGuru = jsonDecode(response.body);
          for(Map<String,dynamic> guru in dataGuru){
            data.add(GuruModel.fromJson(guru));
          }
        }else{
          print("Terjadi Kesalahan");
        }
      }catch(e){
       print(e.toString());
      }
  }

}