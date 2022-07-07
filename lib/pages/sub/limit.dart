import 'package:flutter/material.dart';
import 'package:saku_santri/global.dart';

class Limit extends StatefulWidget {
  const Limit({super.key});

  @override
  State<Limit> createState() => _LimitState();
}

class _LimitState extends State<Limit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: const Text('Atur Limit',
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
                  Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child:Button(
                          buttonText: 'Perbarui Limit',
                          onPress: () {
                              Navigator.pop(context);
                          }
                        ),
                      )
                ],
              ),
            ),
        )
      );
  }
}
