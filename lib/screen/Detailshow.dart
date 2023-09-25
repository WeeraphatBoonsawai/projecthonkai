import 'package:flutter/material.dart';
import 'package:hsr/constants.dart';
import 'package:hsr/dataHSR/CharactersList.dart';
import 'package:hsr/screen/color_and_size.dart';
import 'package:hsr/screen/color_and_size2.dart';
import 'package:hsr/screen/color_and_size3.dart';
import 'package:hsr/screen/color_and_size4.dart';
import 'package:hsr/screen/color_and_size5.dart';
import 'package:hsr/screen/description.dart';
import 'package:hsr/screen/imagechar.dart';
import 'package:hsr/screen/widget/Ascension2.dart';
import 'package:hsr/screen/widget/Ascension4.dart';
import 'package:hsr/screen/widget/Ascension6.dart';
import 'package:hsr/screen/widget/Eidolon1.dart';
import 'package:hsr/screen/widget/Eidolon2.dart';
import 'package:hsr/screen/widget/Eidolon3.dart';
import 'package:hsr/screen/widget/Eidolon4.dart';
import 'package:hsr/screen/widget/Eidolon5.dart';
import 'package:hsr/screen/widget/Eidolon6.dart';
import 'package:hsr/screen/widget/Talent.dart';
import 'package:hsr/screen/widget/Ultimate.dart';
import 'package:hsr/screen/widget/skiil.dart';
import 'package:hsr/screen/widget/technique.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.CharactersList});

  final HSRCH CharactersList;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
            appBar: AppBar(
        backgroundColor: CharactersList.color,
        elevation: 0,
       
      ),
      // each product have a color
      backgroundColor: CharactersList.color,
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
                        ColorAndSize2(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 1),
                        ColorAndSize(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 1),
                        ColorAndSize3(CharactersList: CharactersList),
                        ColorAndSize4(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 1),
                        Center(
                          child: Row(
                            children: [
                              Text(CharactersList.namecharacters,style: TextStyle(
                                fontSize: 20,
                                
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),)
                              ,SizedBox(width: 2,),
                              Text("Skills",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                        Description(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        Descriptionskill(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionUltimate(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionTalent(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        Descriptiontechnique(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        Center(
                          child: Row(
                            children: [
                              Text(CharactersList.namecharacters,style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),)
                              ,SizedBox(width: 2,),
                              Text("Eidolon",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                        DescriptionEidolon1(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionEidolon2(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionEidolon3(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionEidolon4(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionEidolon5(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionEidolon6(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        Center(
                          child: Row(
                            children: [
                              Text(CharactersList.namecharacters,style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),)
                              ,SizedBox(width: 2,),
                              Text("Traces",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: kDefaultPaddin / 5),
                        ColorAndSize5(CharactersList: CharactersList),
                        DescriptionAscension2(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionAscension4(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        DescriptionAscension6(CharactersList: CharactersList),
                        SizedBox(height: kDefaultPaddin / 5),
                        SizedBox(height: kDefaultPaddin / 0.2),
                      ],
                    ),
                  ),
ProductTitleWithImage(CharactersList: CharactersList)
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
