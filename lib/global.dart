import 'package:flutter/material.dart';

class ColorPalette {
  static const red = Color(0xffFF5A5F);
  static const green = Color(0xff00A699);
  static const orange = Color(0xffFC642D);
  static const black = Color(0xff484848);
  static const grey = Color(0xffbebebe);
  static const lightgrey = Color(0xffececec);
}

class Transaction {
  DateTime date;
  String name;
  String type;
  String qty;
  String status;
  // IconData icon;

  Transaction(this.date, this.name, this.type, this.qty, this.status);
}

class AppColors {
  static const List<Color> avatarColors = [
    Color(0xffe57373),
    Color(0xfff06292),
    Color(0xffba68c8),
    Color(0xff9575cd),
    Color(0xff7986cb),
    Color(0xff64b5f6),
    Color(0xff4fc3f7),
    Color(0xff4dd0e1),
    Color(0xff4db6ac),
    Color(0xff81c784),
    Color(0xffaed581),
    Color(0xffff8a65),
    Color(0xffd4e157),
    Color(0xffffd54f),
    Color(0xffffb74d),
    Color(0xffa1887f),
    Color(0xff90a4ae)
  ];
}


class Button extends StatelessWidget {
  final void Function()? onPress;
  final String buttonText;

  const Button({Key? key, required this.buttonText, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          backgroundColor: ColorPalette.red,
          shape: const StadiumBorder(),
          textStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      child: Text(buttonText),
    );
  }
}


