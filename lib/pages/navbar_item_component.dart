import 'package:flutter/material.dart';
import 'package:music_player_ui/constant/colors.dart';

/// Created by Emirşah Erden
/// on 28 Şubat 2022
class NavBarItem extends StatelessWidget {
  final IconData icon;

  NavBarItem({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: dualBoxShadow(),
      child: Icon(
        icon,
        color: darkPrimaryColor,
      ),
    );
  }

  BoxDecoration dualBoxShadow() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: darkPrimaryColor.withOpacity(0.5),
          offset: Offset(5, 10),
          spreadRadius: 3,
          blurRadius: 10,
        ),
        const BoxShadow(
          color: Colors.white,
          offset: Offset(-3, -4),
          spreadRadius: -2,
          blurRadius: 20,
        )
      ],
      color: primaryColor,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
