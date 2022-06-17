import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:h_5_19_tokohandphone/item_card_transaction.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:h_5_19_tokohandphone/home_screen.dart';
import 'package:h_5_19_tokohandphone/request_hp_screen.dart';
import 'package:h_5_19_tokohandphone/request_hp.dart';
import 'package:h_5_19_tokohandphone/about.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference transaction = firestore.collection('transaction');
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transaction"),
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
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                StreamBuilder<QuerySnapshot>(
                  stream: transaction.snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data!.docs
                            .map((e) => ItemCardTransaction(
                                  e.get('nama'),
                                  e.get('merk_hp'),
                                  e.get('harga'),
                                  onDelete: () {
                                    transaction.doc(e.id).delete();
                                  },
                                ))
                            .toList(),
                      );
                    } else {
                      return const Text('Loading');
                    }
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
