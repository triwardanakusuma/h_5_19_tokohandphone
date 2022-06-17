import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:h_5_19_tokohandphone/home_screen.dart';
import 'package:h_5_19_tokohandphone/request_hp.dart';
import 'package:h_5_19_tokohandphone/request_hp_screen.dart';
import 'package:h_5_19_tokohandphone/transaction.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
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
                    builder: (_) => const Transaction(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo.jpg',
                  width: 250, height: 250),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                "BestPhone App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: const Text(
                "Created by",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 10.0),
              child: const Text(
                "1915016115 / Tri Wardana Kusuma",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 10.0),
              child: const Text(
                "1915016135 / Sahrani",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 10.0),
              child: const Text(
                "1915016142 / Riqi Aryanto",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 10.0),
              child: const Text(
                "1915016146 / Adan Ramadhani",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
