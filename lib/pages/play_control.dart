import 'package:flutter/material.dart';
import 'package:music_player_ui/constant/colors.dart';

/// Created by Emirşah Erden
/// on 01 Mart 2022
class PlayControl extends StatelessWidget {
  const PlayControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: boxShadow,
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(color: darkPrimaryColor, shape: BoxShape.circle),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                boxShadow: boxShadow,
              ),
              child: Center(
                  child: Icon(
                Icons.play_arrow,
                size: 50,
                color: darkPrimaryColor,
              )),
            ),
          )
        ],
      ),
    );
  }

  List<BoxShadow> get boxShadow {
    return [
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
    ];
  }
}
