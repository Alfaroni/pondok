import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:saku_santri/global.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: const Text('Top Up',
              style: TextStyle(color: ColorPalette.black, fontWeight: FontWeight.bold)),
          centerTitle: false,
          titleSpacing: 15,
          iconTheme: const IconThemeData(
            color: ColorPalette.black, //change your color here
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      color: ColorPalette.lightgrey,
                      margin: EdgeInsets.zero,
                      elevation: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: const Text.rich(
                          TextSpan(
                          text: 'Saldo anda\n',
                          style: TextStyle(
                              fontSize: 12,
                              color: ColorPalette.black,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Rp200.000',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: ColorPalette.red)),
                          ],
                        ),
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                            'Masukkan nominal top up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorPalette.black),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Minimal Rp10.000",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              fillColor: ColorPalette.lightgrey,
                              filled: true,
                            ),
                            style: const TextStyle(
                                color: ColorPalette.black, fontSize: 13),
                          ),
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                            'Metode Pembayaran',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorPalette.black),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(60),
                                backgroundColor: ColorPalette.lightgrey,
                                textStyle: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(_selected,
                                      style: const TextStyle(
                                          color: ColorPalette.black),
                                    ),
                                  ),
                                const Icon(FeatherIcons.moreHorizontal,
                                    size: 24,
                                    color: ColorPalette.grey,
                                  ),
                                ],
                              ),
                              onPressed: () => showModal(context),
                            ),
                          ]
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                            'Catatan',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorPalette.black),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Tulis di sini",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              fillColor: ColorPalette.lightgrey,
                              filled: true,
                            ),
                            style: const TextStyle(
                                color: ColorPalette.black, fontSize: 13),
                          ),
                        ],
                      )
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child:Button(
                            buttonText: 'Konfirmasi & Top Up',
                            onPress: () {
                                Navigator.pop(context);
                            }
                          ),
                        )
                  ],
                ),
              ),
          ),
      );
  }


  String _selected = 'Silahkan pilih pembayaran';
  final List<String> _items = ['Transfer', 'Virtual Account'];

  void showModal(context){
    showModalBottomSheet(
      context: context,
      builder: (context){
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          height: 300,
          child: ListView.separated(
            itemCount: _items.length,
            separatorBuilder: (context, int) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(_items[index], style: const TextStyle(fontWeight: FontWeight.bold))
                ),
                onTap: () {
                  setState(() {
                    _selected = _items[index];
                  });
                  Navigator.of(context).pop();
                }
              );
            }
          ),
        );
      }
    );
  }
}
