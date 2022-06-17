class ModelHP {
  String imageAsset;
  String nama;
  int harga;
  String ukuranLayar;
  String kedalamanPiksel;
  String resolusiLayar;
  String antiAir;
  String teknologiLayar;

  ModelHP({
    required this.imageAsset,
    required this.nama,
    required this.harga,
    required this.ukuranLayar,
    required this.kedalamanPiksel,
    required this.resolusiLayar,
    required this.antiAir,
    required this.teknologiLayar,
  });
}

var modelHPList = [
  //samsung
  ModelHP(
    imageAsset: 'assets/images/hp1.jpg',
    nama: 'Samsung Galaxy A33 5G',
    harga: 4154000,
    ukuranLayar: '6,4',
    kedalamanPiksel: '411ppi',
    resolusiLayar: '1080x2400pixels',
    antiAir: 'Ya',
    teknologiLayar: 'Super AMOLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp2.jpg',
    nama: 'Samsung Galaxy S20 FE',
    harga: 5990000,
    ukuranLayar: '6.5',
    kedalamanPiksel: '407ppi',
    resolusiLayar: '1080x2400pixels',
    antiAir: 'Ya',
    teknologiLayar: 'Super AMOLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp3.jpg',
    nama: 'Samsung Galaxy S22 Ultra',
    harga: 16199000,
    ukuranLayar: '6,8',
    kedalamanPiksel: '500ppi',
    resolusiLayar: '3088x1440pixels',
    antiAir: 'Ya',
    teknologiLayar: 'Dynamic AMOLED',
  ),

  //oppo
  ModelHP(
    imageAsset: 'assets/images/hp4.jpg',
    nama: 'OPPO Find X5 PRO',
    harga: 17990000,
    ukuranLayar: '6,7',
    kedalamanPiksel: '525ppi',
    resolusiLayar: '3216x1440pixels',
    antiAir: 'Ya',
    teknologiLayar: 'AMOLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp5.jpg',
    nama: 'OPPO F9 Pro',
    harga: 1852500,
    ukuranLayar: '6.2',
    kedalamanPiksel: '405ppi',
    resolusiLayar: '1080 x 2280pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'IPS-LCD',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp6.jpg',
    nama: 'Oppo Reno 10x Zoom',
    harga: 7490000,
    ukuranLayar: '6.6',
    kedalamanPiksel: '403ppi',
    resolusiLayar: '1080 x 2340pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'AMOLED',
  ),

  //xiaomi
  ModelHP(
    imageAsset: 'assets/images/hp7.jpg',
    nama: 'Xiaomi Redmi 10',
    harga: 1999000,
    ukuranLayar: '5.12',
    kedalamanPiksel: '282ppi',
    resolusiLayar: '720x1280pixels ',
    antiAir: 'Tidak',
    teknologiLayar: 'IPS-LCD',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp8.jpg',
    nama: 'Xiaomi 11T',
    harga: 5550000,
    ukuranLayar: '6.67',
    kedalamanPiksel: '395ppi',
    resolusiLayar: '1080x2400pixels',
    antiAir: 'Ya',
    teknologiLayar: 'IPS-LCD',
  ),

  //vivo
  ModelHP(
    imageAsset: 'assets/images/hp9.jpg',
    nama: 'Vivo X Note',
    harga: 17180000,
    ukuranLayar: '7',
    kedalamanPiksel: '486ppi',
    resolusiLayar: '1440x3080pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'AMOLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp10.jpg',
    nama: 'vivo V21',
    harga: 3340000,
    ukuranLayar: '6.44',
    kedalamanPiksel: '409ppi',
    resolusiLayar: '1080x2400pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'AMOLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp11.jpg',
    nama: 'vivo Y75',
    harga: 3499000,
    ukuranLayar: '6.44',
    kedalamanPiksel: '409ppi',
    resolusiLayar: '1080x2400pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'AMOLED',
  ),

  //realme
  ModelHP(
    imageAsset: 'assets/images/hp12.jpg',
    nama: 'realme 9 Pro',
    harga: 4879000,
    ukuranLayar: '6,6',
    kedalamanPiksel: '400ppi',
    resolusiLayar: '2412x1080pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'IPS-LCD',
  ),

//huawei
  ModelHP(
    imageAsset: 'assets/images/hp13.jpg',
    nama: 'Huawei P40 Pro',
    harga: 8534500,
    ukuranLayar: '6,58',
    kedalamanPiksel: '441ppi',
    resolusiLayar: '1080x2340pixels',
    antiAir: 'Ya',
    teknologiLayar: 'OLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp14.jpg',
    nama: 'Huawei P20',
    harga: 3100000,
    ukuranLayar: '5.8',
    kedalamanPiksel: '432ppi',
    resolusiLayar: '1080x2280pixels',
    antiAir: 'Ya',
    teknologiLayar: 'IPS-LCD',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp15.jpg',
    nama: 'Huawei Mate 30',
    harga: 4500000,
    ukuranLayar: '6.6',
    kedalamanPiksel: '389ppi',
    resolusiLayar: '1080x2340pixels',
    antiAir: 'Ya',
    teknologiLayar: 'OLED',
  ),

  //asus
  ModelHP(
    imageAsset: 'assets/images/hp16.jpg',
    nama: 'Asus ROG Phone 5',
    harga: 14870000,
    ukuranLayar: '6.7',
    kedalamanPiksel: '388ppi',
    resolusiLayar: '1080x2448pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'AMOLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp17.jpg',
    nama: 'Asus ROG Phone 3',
    harga: 11758000,
    ukuranLayar: '6.5',
    kedalamanPiksel: '391ppi',
    resolusiLayar: '1080x2340pixels',
    antiAir: 'Tidak',
    teknologiLayar: 'AMOLED',
  ),

  //apple
  ModelHP(
    imageAsset: 'assets/images/hp18.jpg',
    nama: 'Apple iPhone 13 Pro Max',
    harga: 18299000,
    ukuranLayar: '6,7',
    kedalamanPiksel: '458ppi',
    resolusiLayar: '1284x2778pixels',
    antiAir: 'Ya',
    teknologiLayar: 'OLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp19.jpg',
    nama: 'Apple iPhone 12',
    harga: 10900000,
    ukuranLayar: '6.1',
    kedalamanPiksel: '476ppi',
    resolusiLayar: '1284x2778pixels',
    antiAir: 'Ya',
    teknologiLayar: 'Super Retina XDR OLED',
  ),

  ModelHP(
    imageAsset: 'assets/images/hp20.jpg',
    nama: 'Apple iPhone SE',
    harga: 10499000,
    ukuranLayar: '4.7',
    kedalamanPiksel: '326ppi',
    resolusiLayar: '1334x750pixels',
    antiAir: 'Ya',
    teknologiLayar: 'IPS-LCD',
  ),
];
