import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/CharactersList.dart';

import '../../../constants.dart';

class ColorAndSize3 extends StatelessWidget {
  const ColorAndSize3({super.key, required this.CharactersList});

  final HSRCH CharactersList;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Upgrade Materials",style: TextStyle(color: Colors.white,),),
              SizedBox(height: 6,),
              Row(
                children: <Widget>[
                 Image.asset(CharactersList.upgradematerials1img,width: 30,),SizedBox(width: 4,),Text(CharactersList.upgradematerials1name,style: TextStyle(color: Colors.white,fontSize: 10),),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("",style: TextStyle(color: Colors.white),),
              Row(
                children: <Widget>[
                 Image.asset(CharactersList.upgradematerials2img,width: 30,),SizedBox(width: 2,),Text(CharactersList.upgradematerials2name,style: TextStyle(color: Colors.white,fontSize: 10),),
                ],
              ),
            ],
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
