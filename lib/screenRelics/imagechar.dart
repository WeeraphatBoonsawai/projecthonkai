import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/relicList.dart';

class ProductTitleWithImagerelic extends StatelessWidget {
  const ProductTitleWithImagerelic({super.key, required this.relic});

  final Relicslists relic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Text(
            "Honkai: Star Rail Relic :",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            relic.namerelic,
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
                  tag: "${relic.id}",
                  child: Image.asset(
                    relic.iconrelic,width: 160,height: 260,
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
