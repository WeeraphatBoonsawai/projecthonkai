import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/pathList.dart';


class ItemCardAeon extends StatelessWidget {
  const ItemCardAeon({super.key, required this.listspath, required this.press});

  final Pathslists listspath;
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
                color: listspath.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${listspath.id}",
                child: Image.asset(listspath.Aeonimg),
              ),
            ),
          ),
          SizedBox(height: 2,),
          Center(
            
            child: Text(listspath.Aeonname,
              style: TextStyle(color: kTextLightColor),),
              
           
          ),
           
        
        ],
      ),
    );
  }
}
