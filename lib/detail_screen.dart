import 'package:flutter/material.dart';
import 'package:h_5_19_tokohandphone/model_hp.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:h_5_19_tokohandphone/buy_screen.dart';

class DetailScreen extends StatelessWidget {
  final ModelHP modelHP;

  const DetailScreen({Key? key, required this.modelHP}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return DetailMobilePage(modelHP: modelHP);
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final ModelHP modelHP;

  const DetailMobilePage({Key? key, required this.modelHP}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(modelHP.imageAsset),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                modelHP.nama,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Rp." + modelHP.harga.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 10.0),
              child: const Text(
                "Tampilan",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Expanded(
                    child: Text(
                      "Name",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      "Value",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text("Ukuran Layar")),
                    DataCell(Text(modelHP.ukuranLayar)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text("Kedalaman Pixel")),
                    DataCell(Text(modelHP.kedalamanPiksel)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text("Resolusi Layar")),
                    DataCell(Text(modelHP.resolusiLayar)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text("Anti Air")),
                    DataCell(Text(modelHP.antiAir)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text("Teknologi Layar")),
                    DataCell(Text(modelHP.teknologiLayar)),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 10),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BuyScreen(
                            merkHP: modelHP.nama, harga: modelHP.harga),
                      ),
                    );
                  },
                  child: Text(
                    "Beli Sekarang",
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
