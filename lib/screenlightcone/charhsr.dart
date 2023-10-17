import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/LightConesList.dart';

class ItemCardlight extends StatelessWidget {
  const ItemCardlight({super.key, required this.LightConesde, required this.press});

  final LightConeslists LightConesde;
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
                color: LightConesde.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${LightConesde.id}",
                child: Image.asset(LightConesde.iconLightCones),
              ),
            ),
          ),
          SizedBox(height: 2,),
          Center(
            
            child: Text(LightConesde.nameLightCones,
              style: TextStyle(color: Colors.white,fontSize: 12),),
              
           
          ),
        
        ],
      ),
    );
  }
}
