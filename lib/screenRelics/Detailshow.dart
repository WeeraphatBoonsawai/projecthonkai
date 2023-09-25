import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/relicList.dart';
import 'package:hsr/screenRelics/description.dart';
import 'package:hsr/screenRelics/description1.dart';
import 'package:hsr/screenRelics/imagechar.dart';


class DetailsScreenrelic extends StatelessWidget {
  const DetailsScreenrelic({super.key, required this.relic});

  final Relicslists relic;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
            appBar: AppBar(
        backgroundColor: relic.color,
        elevation: 0,
       
      ),
      // each product have a color
      backgroundColor: relic.color,
      body: ListView(
        children: [
           Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 38, 38, 36),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        SizedBox(height: kDefaultPaddin / 1),
                        Descriptionrelic(relic: relic),
                        SizedBox(height: kDefaultPaddin / 5),
                        Descriptionrelic1(relic: relic),
                      ],
                    ),
                  ),
ProductTitleWithImagerelic(relic: relic)
                ],
              ),
            )
          ],
        ),
        ],
        
      ),
    );
  }
}
