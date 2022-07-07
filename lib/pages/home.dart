import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:saku_santri/global.dart';
import 'package:saku_santri/pages/sub/history.dart';
import 'package:saku_santri/pages/sub/pay.dart';
import 'package:saku_santri/pages/sub/limit.dart';
import 'package:saku_santri/pages/sub/topup.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        foregroundColor: ColorPalette.black,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0), // <-- Radius
        ),
        elevation: 0,
        textStyle: const TextStyle(
            fontFamily: 'Poppins', fontSize: 10, fontWeight: FontWeight.bold));

    return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(32.0),
                          bottomRight: Radius.circular(32.0)),
                      child: Container(
                        color: ColorPalette.red,
                        height: 200,
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text.rich(
                                    TextSpan(
                                      text: 'Hallo,\n',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Mohammed Salah',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'Rp2.000.000 \n',
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'saldo anda',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal)),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                child: CircleAvatar(
                                  backgroundColor: ColorPalette.black,
                                  backgroundImage: AssetImage('assets/foto.jpg'),
                                  radius: 28,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.fromLTRB(15, 165, 15, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16), // <-- Radius
                    ),
                    child: SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TopUp()),
                                );
                              },
                              style: style,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: Icon(
                                        FeatherIcons.plusCircle,
                                        size: 24,
                                      )),
                                  Text("Top Up")
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Pay()),
                                );
                              },
                              style: style,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: Icon(
                                        FeatherIcons.arrowUpCircle,
                                        size: 24,
                                      )),
                                  Text("Bayar")
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Limit()),
                                );
                              },
                              style: style,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: Icon(
                                        FeatherIcons.zap,
                                        size: 24,
                                      )),
                                  Text("Limit")
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const History()),
                                );
                              },
                              style: style,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: Icon(
                                        FeatherIcons.clock,
                                        size: 24,
                                      )),
                                  Text("History")
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Card(
                              margin: EdgeInsets.zero,
                              child: Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        const Text(
                                          'Deposit putra/putri santri',
                                          style: TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                const Text(
                                                  'Rp10.000',
                                                  style: TextStyle(
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: ColorPalette.black),
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: const <Widget>[
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            right: 4),
                                                        child: Icon(
                                                          FeatherIcons.arrowUp,
                                                          size: 16,
                                                          color:
                                                              ColorPalette.green,
                                                        )),
                                                    Text(
                                                      '25%',
                                                      style: TextStyle(
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              ColorPalette.green),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ))
                                      ]))),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Card(
                              margin: EdgeInsets.zero,
                              child: Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        const Text(
                                          'Transaksi hari ini',
                                          style: TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              const Text(
                                                'Rp2.000',
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorPalette.black),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: const <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 4),
                                                      child: Icon(
                                                        FeatherIcons.arrowUp,
                                                        size: 16,
                                                        color: ColorPalette.green,
                                                      )),
                                                  Text(
                                                    '25%',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            ColorPalette.green),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ]))),
                        ),
                      ],
                    ),
                    Card(
                        color: Colors.grey[200],
                        margin: const EdgeInsets.only(top: 15),
                        elevation: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: const Text.rich(
                            TextSpan(
                              text: 'Total penarikan hari ini: ',
                              style: TextStyle(fontSize: 10),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '20 kali',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: ColorPalette.black)),
                              ],
                            ),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    const Text(
                                      'Transaksi terakhir',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: ColorPalette.black),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const History()),
                                        );
                                      },
                                      child: const Text('Lihat semua',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.grey)),
                                    )
                                  ],
                                ),
                              ),
                              RecentTransaction()
                            ]
                        )
                      ),
                  ]))
            ],
          )
        )
    );
  }
}

class RecentTransaction extends StatelessWidget {
  RecentTransaction({super.key});

  final List<Transaction> _elements = [
    Transaction(DateTime(2022, 6, 24, 14), 'Iuran Bulanan', 'Pembayaran', '-Rp200.000', 'berhasil'),
    Transaction(DateTime(2022, 6, 24, 10), 'Koperasi', 'Deposit' , '-Rp200.000', 'pending'),
    Transaction(DateTime(2022, 6, 24, 9), 'Wali Santri', 'Pembelian', '-Rp200.000', 'gagal'),
    Transaction(DateTime(2022, 6, 24, 7), 'Laundry', 'Deposit', '-Rp200.000', 'berhasil'),
  ];

  String _getInitials(String user) {
    var buffer = StringBuffer();
    var split = user.split(" ");
    for (var s in split) buffer.write(s[0]);

    return buffer.toString().substring(0, split.length);
  }

  Color _getAvatarColor(String user) {
    return AppColors
        .avatarColors[user.hashCode % AppColors.avatarColors.length];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
          itemCount: _elements.length,
          itemBuilder: (context, index){
            var item = _elements[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                leading: CircleAvatar(
                  child: Text(
                    _getInitials(item.name),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  backgroundColor: _getAvatarColor(item.name),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      item.name,
                      style:
                          const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '${item.type}. ',
                        style: const TextStyle(fontSize: 10, color: Colors.grey),
                        children: <TextSpan>[
                          TextSpan(text: '${item.date.hour}:00')
                        ],
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      item.qty,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.orange),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                      child: Container(
                        color: item.status == 'berhasil' ? ColorPalette.green  : item.status == 'gagal' ? ColorPalette.orange : ColorPalette.red,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          item.status,
                          style: const TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
    );
  }
}
