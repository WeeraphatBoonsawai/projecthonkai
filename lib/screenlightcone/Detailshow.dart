import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/LightConesList.dart';
import 'package:hsr/screenlightcone/color_and_size.dart';
import 'package:hsr/screenlightcone/color_and_size2.dart';
import 'package:hsr/screenlightcone/imagechar.dart';
import 'package:hsr/screenlightcone/widget/Lightconelv1.dart';
import 'package:hsr/screenlightcone/widget/LightconelvMAX.dart';

class DetailsScreenlight extends StatelessWidget {
  const DetailsScreenlight({super.key, required this.LightConesde});

  final LightConeslists LightConesde;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
            appBar: AppBar(
        backgroundColor: LightConesde.color,
        elevation: 0,
       
      ),
      // each product have a color
      backgroundColor: LightConesde.color,
      body: ListView(
        children: [
           Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 38, 38, 36),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(height: kDefaultPaddin / 0.5),
                        ColorAndSizelight(LightConesde: LightConesde),
                        SizedBox(height: kDefaultPaddin / 1),
                        ColorAndSizelightstats(LightConesde: LightConesde),
                        SizedBox(height: kDefaultPaddin / 1),
                        DescriptionLightconelv1(LightConesde: LightConesde),
                        SizedBox(height: kDefaultPaddin / 3),
                        DescriptionLightconelvMAX(LightConesde: LightConesde),
                        SizedBox(height: kDefaultPaddin / 5),
                        SizedBox(height: kDefaultPaddin / 0.2),
                      ],
                    ),
                  ),
ProductTitleWithImagelightcone(LightConesde: LightConesde),
                ],
              ),
            )
          ],
        ),
        ],
        
      ),
    );
  }
}
