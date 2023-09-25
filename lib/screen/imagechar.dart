import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/CharactersList.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.CharactersList});

  final HSRCH CharactersList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Text(
            "Honkai: Star Rail Characters :",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            CharactersList.namecharacters,
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
                  tag: "${CharactersList.id}",
                  child: Image.asset(
                    CharactersList.imgcharacters,width: 160,height: 300,
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
