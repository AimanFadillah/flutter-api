import 'dart:convert';

import 'package:android_api/models/SiswaModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as fetch;


class SiswaController extends GetxController {
  RxBool loading = RxBool(false);
  RxList<SiswaModel> list1 = RxList<SiswaModel>([]);

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    try {
      loading.value = true;
      var response = await fetch.get(Uri.parse("https://mocki.io/v1/4af08a00-9edb-4be7-9d43-a6df523f1edb"));
      loading.value = false;
      if (response.statusCode == 200) {
        final dataSiswa = jsonDecode(response.body);
        for (Map<String, dynamic> siswa in dataSiswa) {
          list1.value.add(SiswaModel.fromJson(siswa));
        }
      } else {
        print("Terjadi Kesalahan");
      }
    } catch (e) {
      print(e.toString());
    }
  }


}