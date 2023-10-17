import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/LightConesList.dart';


class DescriptionLightconelv1 extends StatelessWidget {
  const DescriptionLightconelv1({super.key, required this.LightConesde});

  final LightConeslists LightConesde;
  @override
   Widget build(BuildContext context) {
    final double radius = 16;

    return Card(
      color: Color.fromARGB(255, 220, 208, 208),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: 4,
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            
            borderRadius: BorderRadius.horizontal(
              
              left: Radius.circular(radius),
            ),
            
          ),

          Expanded(child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
                
                Text(
                  "LV 1",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                
                
                    
                      Text(
                  LightConesde.lightConesdetaillv1,
                  style: TextStyle(fontSize: 16),

                ),
                    
                  
                
                
              ],
            ),
          ),
          ),

          
          
        ],
      ),
      
    );
  }
}