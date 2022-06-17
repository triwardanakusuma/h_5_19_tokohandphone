import 'package:flutter/material.dart';
import 'package:h_5_19_tokohandphone/model_hp.dart';
import 'package:h_5_19_tokohandphone/detail_screen.dart';

class ModelHPList extends StatelessWidget {
  const ModelHPList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final ModelHP modelHP = modelHPList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(modelHP: modelHP);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(modelHP.imageAsset),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          modelHP.nama,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(modelHP.harga.toString()),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: modelHPList.length,
    );
  }
}
