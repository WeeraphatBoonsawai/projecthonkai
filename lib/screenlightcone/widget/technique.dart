import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/CharactersList.dart';


class Descriptiontechnique extends StatelessWidget {
  const Descriptiontechnique({super.key, required this.CharactersList});

  final HSRCH CharactersList;
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
            child: Image.asset(
              CharactersList.techniqueicon,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          Expanded(child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
                
                Text(
                  CharactersList.techniquename,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                
                
                    
                      Text(
                  CharactersList.techniquedetail,
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