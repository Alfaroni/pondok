import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:saku_santri/global.dart';
import 'package:saku_santri/bottomNavigation.dart';
 import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  
  
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          // title: const Text('Daftar',
          //     style: TextStyle(color: ColorPalette.black, fontWeight: FontWeight.bold)),
          // centerTitle: false,
          iconTheme: const IconThemeData(
            color: ColorPalette.black, //change your color here
          ),
        ),
        body: SingleChildScrollView(
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
                            text: 'Silahkan daftar terlebih dahulu',
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
                      hintText: "Fullname",
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Silahkan isi nama lengkap anda';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                   TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
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
                        keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if (value == null || value.isEmpty) 
                      {
                        return 'Silahkan isi email';
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                        return 'Silahkan isi email dengan benar';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                   TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Phone",
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
                        
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value){
                      if(value == null || value.isEmpty)
                      {
                        return 'Silahkan masukkan no.hp';
                      }
                      return null;
                    },  
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                      obscureText: _isObscure,
                      controller: password,
                          maxLength: 8,
                      decoration: InputDecoration(
                          hintText: "Password",
                          helperText: 'No more than 8 characters.',
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
                      validator: (value){
                      if(value == null || value.isEmpty)
                      {
                        return 'Silahkan masukkan password';
                      }
                      return null;
                    },
                      
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                      obscureText: _isObscure,
                      controller: confirmpassword,
                          maxLength: 8,
                      decoration: InputDecoration(
                          hintText: "Ulangi Password",
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
                      validator: (value){
                      if(value == null || value.isEmpty)
                      {
                        return 'Silahkan ulangi password';
                      }
                      print(password.text);
                      print(confirmpassword.text);
                      if(password.text!=confirmpassword.text){
                        return "Password tidak seusai";
                      }
                      return null;
                    },
                  ),
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
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
