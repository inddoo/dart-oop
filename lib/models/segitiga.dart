class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  Segitiga(this.alas, this.tinggi, this.jenis);

  Segitiga.sikuSiku(this.alas, this.tinggi) : jenis = 'Siku-siku';

  Segitiga.samaSisi(double sisi)
      : alas = sisi,
        tinggi = sisi * 0.866,
        jenis = 'Sama Sisi';

  Segitiga.samaKaki(this.alas, this.tinggi) : jenis = 'Sama Kaki';

  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }

  void cetakInfo() {
    print('Segitiga $jenis: Alas = $alas, Tinggi = ${tinggi.toStringAsFixed(2)}, Luas = ${hitungLuas().toStringAsFixed(2)}');
  }
}
