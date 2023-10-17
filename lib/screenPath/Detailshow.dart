import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/pathList.dart';
import 'package:hsr/screenPath/color_and_size.dart';
import 'package:hsr/screenPath/description.dart';
import 'package:hsr/screenPath/description1.dart';
import 'package:hsr/screenPath/description3.dart';
import 'package:hsr/screenPath/imagechar.dart';
import 'package:hsr/screenPath/description2.dart';

class DetailsScreenAeon extends StatelessWidget {
  const DetailsScreenAeon({super.key, required this.listspath});

  final Pathslists listspath;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
            appBar: AppBar(
        backgroundColor: listspath.color,
        elevation: 0,
       
      ),
      // each product have a color
      backgroundColor: listspath.color,
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
                        ColorAndSize(listspath: listspath),
                        SizedBox(height: kDefaultPaddin / 5),
                    
                        DescriptionAeon3(listspath: listspath),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionAeon2(listspath: listspath),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionAeon(listspath: listspath),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionAeon1(listspath: listspath),
                        
                      ],
                    ),
                  ),
ProductTitleWithImageAeon(listspath: listspath)
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
