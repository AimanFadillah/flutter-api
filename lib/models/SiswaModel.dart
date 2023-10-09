class SiswaModel {
  String? nama;
  String? kelas;

  SiswaModel({this.nama, this.kelas});

  SiswaModel.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    kelas = json['kelas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nama'] = nama;
    data['kelas'] = kelas;
    return data;
  }
}