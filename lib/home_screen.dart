import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:h_5_19_tokohandphone/about.dart';
import 'package:h_5_19_tokohandphone/request_hp.dart';
import 'package:h_5_19_tokohandphone/request_hp_screen.dart';
import 'package:h_5_19_tokohandphone/transaction.dart';
import 'package:h_5_19_tokohandphone/model_hp_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
                    builder: (_) => const Transaction(),
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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return const ModelHPList();
        },
      ),
    );
  }
}
