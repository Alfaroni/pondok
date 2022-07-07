import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:saku_santri/global.dart';
import 'package:saku_santri/bottomNavigation.dart';
import 'package:saku_santri/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          // title: const Text('Masuk',
          //     style: TextStyle(color: ColorPalette.black, fontWeight: FontWeight.bold)),
          // centerTitle: false,
          iconTheme: const IconThemeData(
            color: ColorPalette.black, //change your color here
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text.rich(
                    TextSpan(
                      text: 'Selamat datang\n',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Silahkan masuk terlebih dahulu',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: ColorPalette.grey)),
                      ],
                    ),
                  ),
                ),
                Column(children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Phone number, username or email",
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
                  const SizedBox(height: 30),
                  TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          fillColor: ColorPalette.lightgrey,
                          filled: true,
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure ? FeatherIcons.eye : FeatherIcons.eyeOff,
                                  size: 16),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              })),
                      style: const TextStyle( color: ColorPalette.black, fontSize: 13),
                      // validator: (value) {
                      // if (value == null || value.isEmpty) {
                      //   return 'Password salah';
                      // }
                      // return null;
                    // },
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(top: 15),
                    child: const Text('Forgot password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)
                    ),
                  )
                ]),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column (
                      children: <Widget>[
                        Button(
                          buttonText: 'Masuk',
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BottomNavigation()),
                              );
                            }
                          }),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                               const Text(
                                'Belum punya akun?',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: ColorPalette.black),
                              ),
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Register()),
                                  );
                                },
                                child: const Text('Daftar di sini.',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                          
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
