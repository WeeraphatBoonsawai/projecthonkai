import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/LightConesList.dart';

import '../../../constants.dart';

class ColorAndSizelightstats extends StatelessWidget {
  const ColorAndSizelightstats({super.key, required this.LightConesde});

 final LightConeslists LightConesde;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(text: "HP\n"),
                TextSpan(
                  text: "${LightConesde.hplightCone} ",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(text: "ATK\n"),
                TextSpan(
                  text: "${LightConesde.atklightCone} ",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
         Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(text: "DEF\n"),
                TextSpan(
                  text: "${LightConesde.deflightCone} ",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
       
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color, required this.isSelected});

  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
