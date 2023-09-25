import 'package:flutter/material.dart';
import 'package:hsr/dataHSR/pathList.dart';



class DescriptionAeon3 extends StatelessWidget {
  const DescriptionAeon3({super.key, required this.listspath});

  final Pathslists listspath;
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
                  "Profile",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                
                
                    
                      Text(
                  listspath.Profilepath,
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