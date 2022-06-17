import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:h_5_19_tokohandphone/home_screen.dart';
import 'package:get/get.dart';
import 'package:h_5_19_tokohandphone/request_hp.dart';
import 'package:h_5_19_tokohandphone/request_hp_screen.dart';
import 'package:h_5_19_tokohandphone/transaction.dart' as trans;

Future<dynamic> CustomAlert(BuildContext context, String pesan, merkhp,
    namapembeli, alamat, nohp, harga, bayar, kembalian) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
              "$pesan\n\n\nMerk HP: $merkhp\n\nNama Pembeli: $namapembeli\n\nAlamat Pembeli: $alamat\n\nNo Hp: $nohp\n\nHarga: $harga\n\nBayar: $bayar\n\nKembalian: $kembalian",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Selesai",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      });
}

class BuyScreen extends StatelessWidget {
  String merkHP;
  int harga;
  BuyScreen({Key? key, required this.merkHP, required this.harga})
      : super(key: key);

  var kembalian = 0.obs;

  void hitungKembalian() {
    int test = int.parse(bayarController.text) - int.parse(harga.toString());
    kembalian.value = test;
  }

  final merkHPController = TextEditingController();
  final namaPembeliController = TextEditingController();
  final alamatPembeliController = TextEditingController();
  final noHPController = TextEditingController();
  final hargaController = TextEditingController();
  final bayarController = TextEditingController();
  final kembalianController = TextEditingController();

  void dispose() {
    merkHPController.dispose();
    namaPembeliController.dispose();
    alamatPembeliController.dispose();
    noHPController.dispose();
    hargaController.dispose();
    bayarController.dispose();
    kembalianController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference transactions = firestore.collection('transaction');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buy"),
        backgroundColor: HexColor("#000000"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'BestPhone App',
                  style: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              tileColor: HexColor("#3D0000"),
              leading: Icon(
                Icons.home,
                color: HexColor("#ffffff"),
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: HexColor("#ffffff"),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
            ),
            ListTile(
              tileColor: HexColor("#3D0000"),
              leading: Icon(
                Icons.request_page,
                color: HexColor("#ffffff"),
              ),
              title: Text(
                "Request HP Form",
                style: TextStyle(
                  color: HexColor("#ffffff"),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RequestHPScreen(),
                  ),
                );
              },
            ),
            ListTile(
              tileColor: HexColor("#3D0000"),
              leading: Icon(
                Icons.request_quote,
                color: HexColor("#ffffff"),
              ),
              title: Text(
                "Request HP",
                style: TextStyle(
                  color: HexColor("#ffffff"),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RequestHP(),
                  ),
                );
              },
            ),
            ListTile(
              tileColor: HexColor("#3D0000"),
              leading: Icon(
                Icons.payment,
                color: HexColor("#ffffff"),
              ),
              title: Text(
                "Transaction",
                style: TextStyle(
                  color: HexColor("#ffffff"),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const trans.Transaction(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 40, right: 10, bottom: 0),
              child: TextField(
                controller: merkHPController..text = merkHP,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.phone_android,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Merk",
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 10, bottom: 0),
              child: TextField(
                controller: namaPembeliController,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Nama Pembeli",
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 10, bottom: 0),
              child: TextField(
                controller: alamatPembeliController,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Alamat Pembeli",
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 10, bottom: 0),
              child: TextField(
                controller: noHPController,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan No HP",
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 10, bottom: 0),
              child: TextField(
                controller: hargaController..text = harga.toString(),
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.price_change,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Harga",
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 10, bottom: 0),
              child: TextField(
                controller: bayarController,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.payment,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Bayar",
                ),
                onChanged: (val) {
                  hitungKembalian();
                },
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 10, bottom: 0),
              child: Obx(
                () => TextField(
                  controller: kembalianController..text = kembalian.toString(),
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.money,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Masukkan Kembalian",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, bottom: 10),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    transactions.add({
                      'merk_hp': merkHPController.text,
                      'nama': namaPembeliController.text,
                      'alamat': alamatPembeliController.text,
                      'no_hp': noHPController.text,
                      'harga': int.tryParse(hargaController.text) ?? 0,
                      'bayar': int.tryParse(bayarController.text) ?? 0,
                      'kembalian': int.tryParse(kembalianController.text) ?? 0,
                    });

                    CustomAlert(
                      context,
                      "Bukti Transaksi",
                      merkHPController.text,
                      namaPembeliController.text,
                      alamatPembeliController.text,
                      noHPController.text,
                      hargaController.text,
                      bayarController.text,
                      kembalianController.text,
                    );

                    namaPembeliController.text = "";
                    alamatPembeliController.text = "";
                    noHPController.text = "";
                    bayarController.text = "";
                    kembalianController.text = "";
                  },
                  child: Text(
                    "Simpan",
                    style: TextStyle(
                      color: HexColor("#ffffff"),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//sebelum menggunakan getx

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:pa_mobile/home_screen.dart';

// Future<dynamic> CustomAlert(BuildContext context, String pesan) {
//   return showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           content: Text(pesan),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text("OK"),
//             ),
//           ],
//         );
//       });
// }

// class BuyScreen extends StatefulWidget {
//   String merkHP, harga;
//   BuyScreen({Key key, this.merkHP, this.harga}) : super(key: key);

//   @override
//   State<BuyScreen> createState() => _BuyScreenState();
// }

// class _BuyScreenState extends State<BuyScreen> {
//   String kembalian = "";

//   final merkHPController = TextEditingController();
//   final namaPembeliController = TextEditingController();
//   final alamatPembeliController = TextEditingController();
//   final noHPController = TextEditingController();
//   final qtyController = TextEditingController();
//   final hargaController = TextEditingController();
//   final totalBeliController = TextEditingController();
//   final bayarController = TextEditingController();
//   final kembalianController = TextEditingController();

//   @override
//   void dispose() {
//     merkHPController.dispose();
//     namaPembeliController.dispose();
//     alamatPembeliController.dispose();
//     noHPController.dispose();
//     qtyController.dispose();
//     hargaController.dispose();
//     totalBeliController.dispose();
//     bayarController.dispose();
//     kembalianController.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     FirebaseFirestore firestore = FirebaseFirestore.instance;
//     CollectionReference users = firestore.collection('users');
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Buy"),
//         backgroundColor: HexColor("#000000"),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               child: Center(
//                 child: Text(
//                   'BestPhone App',
//                   style: TextStyle(
//                     color: HexColor("#ffffff"),
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               decoration: const BoxDecoration(
//                 color: Colors.black,
//               ),
//             ),
//             ListTile(
//               tileColor: HexColor("#3D0000"),
//               leading: Icon(
//                 Icons.home,
//                 color: HexColor("#ffffff"),
//               ),
//               title: Text(
//                 "Home",
//                 style: TextStyle(
//                   color: HexColor("#ffffff"),
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const HomeScreen(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 40, right: 10, bottom: 0),
//               child: TextField(
//                 controller: merkHPController..text = widget.merkHP,
//                 decoration: const InputDecoration(
//                   icon: Icon(
//                     Icons.phone_android,
//                     color: Colors.black,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Masukkan Merk",
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 15, right: 10, bottom: 0),
//               child: TextField(
//                 controller: namaPembeliController,
//                 decoration: const InputDecoration(
//                   icon: Icon(
//                     Icons.person,
//                     color: Colors.black,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Masukkan Nama Pembeli",
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 15, right: 10, bottom: 0),
//               child: TextField(
//                 controller: alamatPembeliController,
//                 decoration: const InputDecoration(
//                   icon: Icon(
//                     Icons.home,
//                     color: Colors.black,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Masukkan Alamat Pembeli",
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 15, right: 10, bottom: 0),
//               child: TextField(
//                 controller: noHPController,
//                 decoration: const InputDecoration(
//                   icon: Icon(
//                     Icons.phone,
//                     color: Colors.black,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Masukkan No HP",
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 15, right: 10, bottom: 0),
//               child: TextField(
//                 controller: hargaController..text = widget.harga,
//                 decoration: const InputDecoration(
//                   icon: Icon(
//                     Icons.price_change,
//                     color: Colors.black,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Masukkan Harga",
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 15, right: 10, bottom: 0),
//               child: TextField(
//                 controller: bayarController,
//                 decoration: const InputDecoration(
//                   icon: Icon(
//                     Icons.payment,
//                     color: Colors.black,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Masukkan Bayar",
//                 ),
//                 onChanged: (String val) {
//                   setState(() {
//                     int test = int.parse(bayarController.text) -
//                         int.parse(widget.harga);
//                     val = test.toString();
//                     kembalian = val;
//                   });
//                 },
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 15, right: 10, bottom: 0),
//               child: TextField(
//                 controller: kembalianController..text = kembalian,
//                 decoration: const InputDecoration(
//                   icon: Icon(
//                     Icons.money,
//                     color: Colors.black,
//                   ),
//                   border: OutlineInputBorder(),
//                   labelText: "Masukkan Kembalian",
//                 ),
//               ),
//             ),
//             const SizedBox(height: 25),
//             Padding(
//               padding: const EdgeInsets.only(left: 30, top: 30, bottom: 10),
//               child: SizedBox(
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     users.add({
//                       'merk_hp': merkHPController.text,
//                       'nama': namaPembeliController.text,
//                       'alamat': alamatPembeliController.text,
//                       'no_hp': noHPController.text,
//                       'harga': int.tryParse(hargaController.text) ?? 0,
//                       'bayar': int.tryParse(bayarController.text) ?? 0,
//                       'kembalian': int.tryParse(kembalianController.text) ?? 0,
//                     });
//                     namaPembeliController.text = "";
//                     alamatPembeliController.text = "";
//                     noHPController.text = "";
//                     qtyController.text = "";
//                     totalBeliController.text = "";
//                     bayarController.text = "";
//                     kembalianController.text = "";

//                     CustomAlert(context, "Pembelian Berhasil");
//                   },
//                   child: Text(
//                     "Simpan",
//                     style: TextStyle(
//                       color: HexColor("#ffffff"),
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     primary: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
