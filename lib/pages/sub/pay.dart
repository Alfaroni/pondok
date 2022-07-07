import 'package:flutter/material.dart';
import 'package:saku_santri/global.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: const Text('Bayar',
              style: TextStyle(color: ColorPalette.black, fontWeight: FontWeight.bold)),
          centerTitle: false,
          titleSpacing: 15,
          iconTheme: const IconThemeData(
            color: ColorPalette.black, //change your color here
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
        )
      );
  }
}
