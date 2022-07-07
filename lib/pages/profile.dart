import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:saku_santri/global.dart';
import 'package:saku_santri/login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text('Profil',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.black)),
            ),
            ListTile(
              minVerticalPadding: 0,
              horizontalTitleGap: 15,
                contentPadding: const EdgeInsets.only(bottom: 30),
                leading: const CircleAvatar(
                    backgroundColor: ColorPalette.black,
                    backgroundImage: AssetImage('assets/foto.jpg'),
                    radius: 30,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('Mohammed Salah',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'alfa.roni@gmail.com \n',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        children: <TextSpan>[
                          TextSpan(text: '089667833053')
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: ColorPalette.black,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: const StadiumBorder(),
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        textStyle: const TextStyle(
                            fontFamily: 'Poppins', fontSize: 12)),
                      child: const Icon(
                              FeatherIcons.edit3,
                              color: ColorPalette.red,
                              size: 16,
                            )
                    ),
                  ],
                ),
              ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text('Pengaturan',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.black)),
            ),
            Column(
              children: const <Widget>[
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 5,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(FeatherIcons.creditCard, size: 20),
                  title: Text('Metode Pembayaran', style: TextStyle(fontSize: 13)),
                  trailing: Icon(FeatherIcons.chevronRight, size: 20),
                ),
                Divider(),
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 5,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(FeatherIcons.helpCircle, size: 20),
                  title: Text('Bantuan', style: TextStyle(fontSize: 13)),
                  trailing: Icon(FeatherIcons.chevronRight, size: 20),
                ),
                Divider(),
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 5,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(FeatherIcons.info, size: 20),
                  title: Text('Tentang Aplikasi', style: TextStyle(fontSize: 13),),
                  trailing: Icon(FeatherIcons.chevronRight, size: 20),
                ),
                Divider(),
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 5,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(FeatherIcons.edit2, size: 20),
                  title: Text('Kebijakan Privasi', style: TextStyle(fontSize: 13)),
                  trailing: Icon(FeatherIcons.chevronRight, size: 20),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Button(
                buttonText: 'Keluar',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Login()),
                  );
                }
              )
            )
          ]
        ),
    );
  }
}
