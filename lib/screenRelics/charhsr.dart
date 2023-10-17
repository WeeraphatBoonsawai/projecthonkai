import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/relicList.dart';

class ItemCardrelic extends StatelessWidget {
  const ItemCardrelic({super.key, required this.relic, required this.press});

  final Relicslists relic;
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
                color: relic.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${relic.id}",
                child: Image.asset(relic.iconrelic),
              ),
            ),
          ),
          SizedBox(height: 2,),
          Center(
            
            child: Text(relic.namerelic,
              style: TextStyle(color: Colors.white,fontSize: 7),),
              
           
          ),
        
        ],
      ),
    );
  }
}
