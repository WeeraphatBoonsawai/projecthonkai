import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/LightConesList.dart';

class ProductTitleWithImagelightcone extends StatelessWidget {
  const ProductTitleWithImagelightcone({super.key, required this.LightConesde});

  final LightConeslists LightConesde;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Text(
            "Honkai: Star Rail Light Cone :",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            LightConesde.nameLightCones,
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
                  tag: "${LightConesde.id}",
                  child: Image.asset(
                    LightConesde.iconLightCones,width: 160,height: 260,
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
