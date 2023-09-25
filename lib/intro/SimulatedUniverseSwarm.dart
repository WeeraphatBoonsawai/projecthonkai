import 'package:flutter/material.dart';


class Swarm extends StatefulWidget {
  const Swarm({super.key});

  @override
  State<Swarm> createState() => _SwarmState();
}

class _SwarmState extends State<Swarm> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Image.asset(
            'images/sim.png',
            height: 60,
            width: 60,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: const Text(
                    'Honkai: Star Rail',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'Simulated Universe: Swarm',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          
        ],
      ),
    );

   

    Widget textSection = const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'Simulated Universe: Swarm Disaster unlocks once you unlocked Simulated Universe  World 5'
        ,style: TextStyle(color: Colors.white),
        

      ),
      
    );

    Widget textSection1 = const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'Herta and her colleagues in the Genius Society prepared a special content for the Simulated Universe. Similar to how the Simulated Universe was unlocked, you get it through a mission.'
        ,style: TextStyle(color: Colors.white),

      ),
    );

    Widget textSection2 = const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'Once you enter the Simulated Universe, you see the world globe of the Swarm Disaster on the side, enter it and start exploring! Before you actually explore though, you must go through the usual process of picking a team to bring.'
        ,style: TextStyle(color: Colors.white),

      ),
    );

    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text("Simulated Universe: Swarm Disaster"),
      ),
        body: ListView(
          
          children: [
            Image.asset(
              'images/sim-uni-swarm-disaster-08302023.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("How to Unlock Swarm Disaster",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            textSection,
            SizedBox(height: 5,),
             Image.asset(
              'images/show.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Learn About the Aeon of Propagation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),

            textSection1,
            Image.asset(
              'images/original.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Enter the Swarm Disaster",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            textSection2,
            Image.asset(
              'images/original (1).png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5,),
          ],
        ),
      );
    
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
