import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/CharactersList.dart';

import '../../../constants.dart';

class ColorAndSize5 extends StatelessWidget {
  const ColorAndSize5({super.key, required this.CharactersList});

 final HSRCH CharactersList;
 @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10,),
                 Text(CharactersList.totalStats1,style: TextStyle(color: Colors.white,fontSize: 12),),SizedBox(width: 10,),Text(CharactersList.totalStats2,style: TextStyle(color: Colors.white,fontSize: 12),),SizedBox(width: 10,),Text(CharactersList.totalStats3,style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(height: 10,),
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
