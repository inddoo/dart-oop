class Buku {
  String judul;
  String pengarang;

  Buku(this.judul, this.pengarang);

  void cetakInfo() {
    print('Buku: "$judul" oleh $pengarang');
  }
}
