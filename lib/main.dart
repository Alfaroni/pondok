import 'package:flutter/material.dart';
import 'package:saku_santri/bottomNavigation.dart';
import 'package:saku_santri/global.dart';
import 'package:saku_santri/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', 
        scaffoldBackgroundColor: Colors.white, 
      ),
      home: const Welcome(),
    );
  }
}

//welcome
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      'assets/logo.png',
                      width: 90,
                      height: 45,
                      fit: BoxFit.contain,
                    ),
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Image.asset(
                              'assets/headline.png',
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              fit: BoxFit.contain,
                            ))),
                    const Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          'Ayo kelola\nuang bersama kami.',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: ColorPalette.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                    Button(
                      buttonText: 'Yuk Mulai!', onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },)
                   
                  ],
                ))));
  }
}





