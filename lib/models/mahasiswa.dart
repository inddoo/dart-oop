class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({this.nama = 'Mahasiswa Baru', this.nim = '00000000'});

  void cetakInfo() {
    print('Mahasiswa: $nama (NIM: $nim)');
  }
}
