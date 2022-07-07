import 'package:flutter/material.dart';
import 'package:saku_santri/global.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text('Pesan',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: ColorPalette.black)),
                    ),
                    TabBar(
                      isScrollable: true,
                      labelColor: ColorPalette.black,
                      unselectedLabelColor: ColorPalette.grey,
                      labelStyle: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                      labelPadding: EdgeInsets.only(right: 15),
                      indicatorPadding: EdgeInsets.only(right: 15),
                      indicatorColor: ColorPalette.black,
                      tabs: [
                        Tab(text: 'Kotak Masuk'),
                        Tab(text: 'Notifikasi'),
                      ],
                    ),
                  ])),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(15),
                child:Text.rich(
                  TextSpan(
                    text: 'Tidak ada pesan \n',
                    style: TextStyle(fontSize: 14, color: ColorPalette.black, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(text: 'Belum ada pesan di inbox', style: TextStyle(fontSize: 12, color: ColorPalette.grey, fontWeight: FontWeight.normal))
                    ],
                  ),
                )),
                buildAList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (c, i) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            "Item $i",
            style: const TextStyle(fontSize: 13),
          ));
      },
    );
  }
}
