import 'package:flutter/material.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import 'package:saku_santri/global.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: const Text('History',
              style: TextStyle(color: ColorPalette.black, fontWeight: FontWeight.bold)),
          centerTitle: false,
          titleSpacing: 15,
          iconTheme: const IconThemeData(
            color: ColorPalette.black,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ExampleWidget()
        )
      );
  }
}

class ExampleWidget extends StatelessWidget {
  ExampleWidget({super.key});

  final List<Transaction> _elements = [
    Transaction(DateTime(2022, 3, 24, 18), 'Iuran Bulanan', 'Pembayaran',
        '-Rp200.000', 'berhasil'),
    Transaction(DateTime(2022, 6, 24, 9), 'Koperasi', 'Deposit', '-Rp200.000',
        'pending'),
    Transaction(DateTime(2022, 6, 25, 8), 'Wali Santri', 'Pembelian',
        '-Rp200.000', 'gagal'),
    Transaction(DateTime(2022, 6, 25, 16), 'Laundry', 'Deposit', '-Rp200.000',
        'berhasil'),
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
    return StickyGroupedListView<Transaction, DateTime>(
      elements: _elements,
      groupBy: (Transaction element) =>
          DateTime(element.date.year, element.date.month, element.date.day),
      groupComparator: (DateTime value1, DateTime value2) =>
          value2.compareTo(value1),
      itemComparator: (Transaction element1, Transaction element2) =>
          element1.date.compareTo(element2.date),
      groupSeparatorBuilder: (Transaction element) => Container(
        color: ColorPalette.lightgrey,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          '${element.date.day}/${element.date.month}/${element.date.year}',
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12
          ),
        ),
      ),
      itemBuilder: (context, Transaction element) {
        var user = element.name;
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          leading: CircleAvatar(
            child: Text(
              _getInitials(user),
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            backgroundColor: _getAvatarColor(user),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                element.name,
                style:
                    const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Text.rich(
                TextSpan(
                  text: '${element.type}. ',
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(text: '${element.date.hour}:00')
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
                      element.qty,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.orange),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                      child: Container(
                        color: element.status == 'berhasil' ? ColorPalette.green : element.status == 'gagal' ? ColorPalette.orange : ColorPalette.red,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          element.status,
                          style: const TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
        );
      },
    );
  }
}
