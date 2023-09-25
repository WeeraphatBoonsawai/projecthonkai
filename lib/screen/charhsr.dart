import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/CharactersList.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.CharactersList, required this.press});

  final HSRCH CharactersList;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: CharactersList.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${CharactersList.id}",
                child: Image.asset(CharactersList.imgcharacters),
              ),
            ),
          ),
          SizedBox(height: 2,),
          Center(
            
            child: Text(CharactersList.namecharacters,
              style: TextStyle(color: kTextLightColor),),
              
           
          ),
         
        
        ],
      ),
    );
  }
}
