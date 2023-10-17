import 'package:flutter/material.dart';
import 'package:hsr/intro/home_screendemo.dart';

class introhsr extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/intro.png"),
            fit: BoxFit.cover,
             
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           
              SizedBox(height: 60),
            Column(children: [
              Text("May this journey lead us starward",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1
              ),
              ),
              SizedBox(height: 20),
              Material(
                 color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> HomeScreendemo(),
                      ));
                  },
                  child: Ink(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                      child: Text("ยินดีต้อนรับผู้บุกเบิก",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                      ),),
                    ),
                  ),
                ),
              ),
            ],
            )
          ],
        ),
      ),
    );
    
  }
}
