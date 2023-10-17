import 'package:flutter/material.dart';

class Relicslists {
  final String namerelic, iconrelic, relicdetail1, relicdetail2;
  final int id;
  final Color color;

  Relicslists(
      {required this.id,
      required this.namerelic,
      required this.iconrelic,
      required this.relicdetail1,
      required this.relicdetail2,
      required this.color,    
});
}

List<Relicslists> relic = [
  Relicslists(
      id: 1,
      namerelic: "Band of Sizzling Thunder",
      iconrelic: "RelicSet/band_of_sizzling_thunder.png",
      relicdetail1: "Increases Lightning DMG by 10%.",
      relicdetail2: "When the wearer uses their Skill, increases the wearer's ATK by 20% for 1 turn(s).",
      color: Colors.amber,
      ),

      Relicslists(
      id: 2,
      namerelic: "Champion of Streetwise Boxing",
      iconrelic: "RelicSet/champion_of_streetwise_boxing.png",
      relicdetail1: "Increases Physical DMG by 10%.",
      relicdetail2: "After the wearer attacks or is hit, their ATK increases by 5% for the rest of the battle.This effect can stack up to 5 time(s).",
      color: Colors.amber,
      ),
      
      Relicslists(
      id: 3,
      namerelic: "Eagle of Twilight Line",
      iconrelic: "RelicSet/eagle_of_twilight_line.png",
      relicdetail1: "Increases Wind DMG by 10%",
      relicdetail2: "After the wearer uses their Ultimate, their action is Advanced Forward by 25%.",
      color: Colors.amber,
      ),
       
];