import 'package:flutter/material.dart';
import 'package:music_player_ui/constant/colors.dart';

/// Created by Emirşah Erden
/// on 01 Mart 2022
class Controls extends StatelessWidget {
  final IconData icon;

  Controls({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: buildBoxDecoration,
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  boxShadow: boxShadow,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(color: primaryColor, shape: BoxShape.circle),
                child: buildCenterIcon,
              ),
            )
          ],
        ));
  }

  BoxDecoration get buildBoxDecoration {
    return BoxDecoration(
      color: primaryColor,
      shape: BoxShape.circle,
      boxShadow: boxShadow,
    );
  }

  Center get buildCenterIcon {
    return Center(child: Icon(icon, size: 30, color: darkPrimaryColor));
  }

  List<BoxShadow> get boxShadow {
    return [
      BoxShadow(
        color: darkPrimaryColor.withOpacity(0.5),
        offset: Offset(5, 10),
        spreadRadius: 3,
        blurRadius: 10,
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(-3, -4),
        spreadRadius: -2,
        blurRadius: 20,
      )
    ];
  }
}
