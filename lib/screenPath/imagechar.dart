import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/pathList.dart';

class ProductTitleWithImageAeon extends StatelessWidget {
  const ProductTitleWithImageAeon({super.key, required this.listspath});

  final Pathslists listspath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Text(
            "Honkai: Star Rail Aeon :",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            listspath.Aeonname,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          
          
          SizedBox(height: 0.2),
          Row(
            children: <Widget>[
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              
              ],
             ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${listspath.id}",
                  child: Image.asset(
                    listspath.Aeonimg,width: 160,height: 260,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
