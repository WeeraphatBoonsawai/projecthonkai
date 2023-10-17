import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hsr/intro/SimulatedUniverseSwarm.dart';
import 'package:hsr/intro/intropage.dart';
import 'package:hsr/screen/charsreen.dart';
import 'package:hsr/screenPath/charsreen.dart';
import 'package:hsr/screenRelics/charsreen.dart';
import 'package:hsr/screenlightcone/charsreen.dart';

final List<String> imgList = [
  'https://tryhardguides.com/wp-content/uploads/2023/09/Honkai-Star-Rail-Fu-Xuan-Banner-1024x576.jpg',
  'https://techraptor.net/sites/default/files/styles/herobanner_desktop/public/2023-09/honkai-star-rail-fu-xuan.jpg?itok=Uq8637AH',
  'https://i.ytimg.com/vi/xmq0xMwoZfg/maxresdefault.jpg',
  'https://i.ytimg.com/vi/UUITXhMP-ss/maxresdefault.jpg',
  ];

class HomeScreendemo extends StatefulWidget {
  const HomeScreendemo({super.key});

  @override
  State<HomeScreendemo> createState() => _HomeScreendemoState();
}

class _HomeScreendemoState extends State<HomeScreendemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 38, 38, 36),
            child: ListView(
              children: [
          DrawerHeader(child: Center(child: Image.asset("images/logo.png")
          ),
          ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.white,size: 40,),
            title: Text("Home",
            style: TextStyle(fontSize: 20,color: Colors.white),
            
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> HomeScreendemo(),
                      ));
            },
          ),
           ListTile(
            leading: Image.asset("images/char.png"),
            title: Text("Characters",
            style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> charScreen(),
                      ));
            },
          ),
           ListTile(
            leading: Image.asset("images/pathss.png"),
            title: Text("Light Cone",
            style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> lightconeScreen(),
                      ));
            },
          ),
           ListTile(
            leading: Image.asset("images/relics.png"),
            title: Text("Relic Set",
            style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> relicScreen(),
                      ));
            },
          ),
           ListTile(
            leading: Image.asset("images/class.png"),
            title: Text("Aeon",
            style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> AeonScreen(),
                      ));
            },
          ),
           ListTile(
            leading: Image.asset("images/sim.png",width: 40,),
            title: Text("Simulated Universe",
            style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Swarm(),
                      
                      ));
            },
          ),
           ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.white,size: 40,),
            title: Text("Exit",
            style: TextStyle(fontSize: 20,color: Colors.white),
            
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> introhsr(),
                      ));
            },
          ),
              ],
            ),
          ),
        ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/innn.png"),
                    fit: BoxFit.cover)
                  ),
                ),),

                Positioned(
              left: 20,
              top: 20,
              child: Row(
                children: [
                  Builder(
                    builder: (context) {
                      return IconButton(onPressed: (){
                        Scaffold.of(context).openDrawer();
                      }, icon: Icon(Icons.menu),
                      color: Colors.white,);
                    }
                  ),
                ],
              ),),
              Positioned(
                top: 180,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 38, 38, 36),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Column(
                    children: [
                     
                    CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 1000,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),
                     
            
 Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 6),
          child: ListTile(
            leading:  Image.asset("images/pompom.png"),
            title: const Text("Welcome honkai star rail",style: TextStyle(color: Colors.white),),
          ),
        ),


Padding(
        
        padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 1),
        
        child: Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              
             Padding(
                padding:  EdgeInsets.all(8.0),
                
                child: InkWell(
                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> charScreen(),
                      ));
                  },
                  child: Container(
                    
                    width: 60,
                    height: 600,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset("images/char.png",height: 20,),
                      Text("Characters"
                      ,style: TextStyle(fontSize: 12,color: Colors.white),)],
                    ),
                    
                    
                  ),
                  
                ),
                
              ),
            Padding(
                padding:  EdgeInsets.all(8.0),
                
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> lightconeScreen(),
                      ));
                  },
                  child: Container(
                    
                    width: 60,
                    height: 600,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset("images/pathss.png",height: 20,),
                      Text("Light Cone"
                      ,style: TextStyle(fontSize: 12,color: Colors.white),)],
                    ),
                    
                    
                  ),
                  
                ),
                
              ),
               Padding(
                padding:  EdgeInsets.all(8.0),
                
                child: InkWell(
                  onTap: () {
                                 Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> relicScreen(),
                      ));
                  },
                  child: Container(
                    
                    width: 60,
                    height: 600,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset("images/relics.png",height: 20,),
                      Text("Relic Set"
                      ,style: TextStyle(fontSize: 12,color: Colors.white),)],
                    ),
                    
                    
                  ),
                  
                ),
                
              ),
               Padding(
                padding:  EdgeInsets.all(8.0),
                
                child: InkWell(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> AeonScreen(),
                      ));
                  },
                  child: Container(
                    
                    width: 60,
                    height: 600,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset("images/class.png",height: 20,),
                      Text("Aeon"
                      ,style: TextStyle(fontSize: 12,color: Colors.white),)],
                    ),
                    
                    
                  ),
                  
                ),
                
              ),
              
            ],
            
          ),
          
        ),
        
      ),
 Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 4),
          child: ListTile(
            leading:  Image.asset("images/sim.png"),
            title: const Text("Simulated Universe",style: TextStyle(color: Colors.white),),
          ),
        ),

  Padding(
                padding:  EdgeInsets.all(8.0),
                
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Swarm(),
                      ));
                  },
                  child: Container(
                    
                    width: 340,
                    height: 180,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset("images/sim-uni-swarm-disaster-08302023.png",width: 340,
                  height: 180.0,fit: BoxFit.cover,),
                      ],
                    ),
                    
                    
                  ),
                  
                ),
                
              ),
            
                    ],
                  ),
                  
                ),
                )
                
          ]
          ),
      ),
    );
  }
}