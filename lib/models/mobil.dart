class Mobil {
  String merk;
  String model;
  int tahun;

  Mobil(this.merk, this.model, this.tahun);

  void cetakInfo() {
    print('Mobil: $merk $model ($tahun)');
  }
}
