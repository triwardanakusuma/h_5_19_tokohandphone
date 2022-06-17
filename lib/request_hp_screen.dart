import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:h_5_19_tokohandphone/about.dart';
import 'package:h_5_19_tokohandphone/home_screen.dart';
import 'package:h_5_19_tokohandphone/request_hp.dart';
import 'package:h_5_19_tokohandphone/transaction.dart' as trans;

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(pesan),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      });
}

class RequestHPScreen extends StatelessWidget {
  RequestHPScreen({Key? key}) : super(key: key);

  final nama = TextEditingController();
  final requestHP = TextEditingController();
  final status = "Belum Selesai";

  void dispose() {
    nama.dispose();
    requestHP.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference requesthp = firestore.collection('requesthp');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request HP Form"),
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
            ListTile(
              tileColor: HexColor("#3D0000"),
              leading: Icon(
                Icons.person,
                color: HexColor("#ffffff"),
              ),
              title: Text(
                "About",
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
                    builder: (_) => const About(),
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
                  left: 15, top: 15, right: 10, bottom: 0),
              child: TextField(
                controller: nama,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Nama",
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 10, bottom: 0),
              child: TextField(
                controller: requestHP,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Request HP",
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
                    requesthp.add({
                      'nama': nama.text,
                      'requesthp': requestHP.text,
                      'status': status
                    });
                    nama.text = "";
                    requestHP.text = "";
                    CustomAlert(context, "Request HP Berhasil Disimpan");
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
