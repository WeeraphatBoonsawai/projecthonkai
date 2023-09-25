import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/CharactersList.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.CharactersList});

  final HSRCH CharactersList;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Path",style: TextStyle(color: Colors.white),),
              Row(
                children: <Widget>[
                 Image.asset(CharactersList.pathcharactersimg,width: 30,),SizedBox(width: 4,),Text(CharactersList.pathcharactersname,style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Combat Types",style: TextStyle(color: Colors.white),),
              Row(
                children: <Widget>[
                 Image.asset(CharactersList.combatypesimg,width: 30,),SizedBox(width: 2,),Text(CharactersList.combatypesname,style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Rarity",style: TextStyle(color: Colors.white),),
              Row(
                children: <Widget>[
                  Icon(Icons.star,color: Colors.amber,weight: 30,),SizedBox(height: 28,),SizedBox(width: 2,),Text(
                  "${CharactersList.charactersRarity} star",style: TextStyle(color: Colors.white),),
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
