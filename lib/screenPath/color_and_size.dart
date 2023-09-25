import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/pathList.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.listspath});

  final Pathslists listspath;
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
                 Image.asset(listspath.imgpath,width: 30,),SizedBox(width: 4,),Text(listspath.namePath,style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        ),
       Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(text: "Aeon Name\n"),
                TextSpan(
                  text: listspath.Aeonname,
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
