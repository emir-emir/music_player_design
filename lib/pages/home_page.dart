import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_ui/constant/colors.dart';
import 'package:music_player_ui/pages/image_list.dart';
import 'package:music_player_ui/pages/navbar.dart';
import 'package:music_player_ui/pages/player_control.dart';
import 'package:music_player_ui/widgets/global_text.dart';

/// Created by Emirşah Erden
/// on 28 Şubat 2022
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RxDouble sliderValue = 2.0.obs;

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TopNavigationBar,
          ContainerList(height),
          GloabalTextName1,
          GloabalTextName2,
          buildObx(sliderValue),
          PlayerControls(),
          SizedBox(height: 100),
        ],
      ),
    );
  }

  Obx buildObx(RxDouble sliderValue) {
    return Obx(() => SliderTheme(
          data: SliderThemeData(trackHeight: 3.5, thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8)),
          child: Slider(
            value: sliderValue.value,
            activeColor: darkPrimaryColor,
            inactiveColor: darkPrimaryColor.withOpacity(0.3),
            onChanged: (value) {
              sliderValue.value = value;
            },
            min: 0,
            max: 20,
          ),
        ));
  }

  GloabalTextName get GloabalTextName2 => GloabalTextName(name: "The Free Nationals", fonSize: 20, fontWeight: FontWeight.w400, color: darkPrimaryColor);

  GloabalTextName get GloabalTextName1 => GloabalTextName(name: "Gidget", fonSize: 28, fontWeight: FontWeight.w500, color: darkPrimaryColor);

  Container ContainerList(double height) {
    return Container(
      height: height / 2.5,
      child: ListView.builder(
          itemCount: resimList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return resimList[index];
          }),
    );
  }

  NavigationBarr get TopNavigationBar => NavigationBarr();
}
