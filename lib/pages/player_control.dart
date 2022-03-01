import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_ui/pages/control.dart';
import 'package:music_player_ui/pages/play_control.dart';

/// Created by Emirşah Erden
/// on 28 Şubat 2022-
class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Controls(icon: Icons.repeat),
          Controls(icon: Icons.skip_previous),
          PlayControl(),
          Controls(icon: Icons.skip_next),
          Controls(icon: Icons.shuffle),
        ],
      ),
    );
  }
}
