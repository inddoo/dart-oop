void main(){
    Mobil mobil1 = Mobil();

    mobil1.merk = "Toyota";
    mobil1.model = "Corolla";
    mobil1.tahun = 2020;

    print(mobil1.merk); //Output: Toyota
    print(mobil1.model); //Output: Corolla
    print(mobil1.tahun); //Output: 2020

    mobil1.klakson(); //Output: Beep! Beep!
}