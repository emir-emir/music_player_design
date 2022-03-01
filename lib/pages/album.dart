import 'package:flutter/material.dart';
import 'package:music_player_ui/constant/colors.dart';

class Album extends StatelessWidget {
  String resimler;

  Album({required this.resimler});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: buildClipRRect,
      decoration: buildBoxDecoration,
    );
  }

  ClipRRect get buildClipRRect {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          resimler,
          fit: BoxFit.fill,
        ));
  }

  BoxDecoration get buildBoxDecoration {
    return BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [BoxShadow(color: darkPrimaryColor, offset: Offset(20, 8), spreadRadius: 3, blurRadius: 25), BoxShadow(color: Colors.white, offset: Offset(-3, -4), spreadRadius: -2, blurRadius: 20)],
    );
  }
}
