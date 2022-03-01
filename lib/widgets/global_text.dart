import 'package:flutter/material.dart';

/// Created by Emirşah Erden
/// on 28 Şubat 2022
class GloabalTextName extends StatelessWidget {
  String name;
  Color? color;
  double? fonSize;
  FontWeight? fontWeight;

  // GloabalTextName({Key? key}) : super(key: key);

  GloabalTextName({required this.name, this.color, this.fonSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(color: color, fontSize: fonSize, fontWeight: fontWeight),
    );
  }
}
