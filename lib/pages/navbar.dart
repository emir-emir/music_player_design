import 'package:flutter/material.dart';
import 'package:music_player_ui/constant/colors.dart';
import 'package:music_player_ui/pages/navbar_item_component.dart';
import 'package:music_player_ui/widgets/global_text.dart';

/// Created by Emirşah Erden
/// on 28 Şubat 2022
class NavigationBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItem(icon: Icons.arrow_back_ios),
          GloabalTextName(name: "Playing Now", fonSize: 20, color: darkPrimaryColor, fontWeight: FontWeight.w500),
          NavBarItem(icon: Icons.list),
        ],
      ),
    );
  }
}
