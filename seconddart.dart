
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
// import 'package:weather_icons/weather_icons.dart';

class seconddart extends StatefulWidget {
  const seconddart({super.key});

  @override
  State<seconddart> createState() => _secondPageState();
}

class _secondPageState extends State<seconddart> {
  @override
  Widget build(BuildContext context) {
    var City_name = ["Mumbai", "delhi", "Dhar", "Indore", "London", "Pune"];
    final _random = new Random();

    var city = City_name[_random.nextInt(City_name.length)];

    Map<String,dynamic>?  info=ModalRoute.of(context)?.settings.arguments as Map <String,dynamic> ?;
   


     String location = info?["location"] ?? "Unknown Location";
    String temp = info?["temp"] ?? "0";
    String airSpeed = info?["AirSpeed"] ?? "0";
    String humidity = info?["Humidity"] ?? "0";
     
     


    return Scaffold(
     appBar:PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: GradientAppBar(

     gradient: LinearGradient(colors:
     [
      const Color.fromARGB(255, 10, 15, 15),
      Color.fromARGB(255, 225, 231, 236)
     ],
     begin: Alignment.topRight,
     end: Alignment.bottomCenter
     
      ),
      ),
     ),



      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue.shade800,
                Colors.blue.shade300,
              ]

              // Colors.blue300,

              ),
        ),
        child: ListView(
          children:[ Column(
            children: [
              //search container
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("serch me");
                      },
                      child: Container(
                          margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                          child: Icon(Icons.search_rounded)),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Search $city"),
                      ),
                    )
                  ],
                ),
              ),
          
          //container
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      padding: EdgeInsets.all(26),
                       child: Row(
                        children: [
                          // Image.network(""),
                          Column(
                            children: [
                              Text("Scatterd Clouds",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),
                              Text(location   ,style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          )
                        ],
                       ) ,
                          
                        
                      
                    ),
                  ),
                ],
          
          
              ),
          
               Row(
                 children: [
                   Expanded(
                     child: Container(
                      height: 280,
                            decoration: BoxDecoration(
                       color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                            padding: EdgeInsets.all(26),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Icon(Icons.thermostat_rounded,size: 30, color: Colors.red, ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  
                                  children: [
                                            Text(temp,style: TextStyle(fontSize: 100),),
                                            Text("C", style: TextStyle(fontSize: 30 ), )
                                  ],
                                )


                              ],
                            ),
                          ),
                   ),
                 ],
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Expanded(
                     child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.fromLTRB(20,0,10,0 ),
          
                      padding: EdgeInsets.all(26),
                      child: Column(

                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          
                          Icon(Icons.wb_sunny_sharp,color: Colors.yellow,size: 30,),
                          
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(airSpeed,style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),),

                          Text("Km/hr")
                        ],
                      ),
                    
          
                     height: 200,               
                     
                      ),
          
                                ),
                   
                  
                   Expanded(
                     child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.fromLTRB(10,0,20,0 ),
                      padding: EdgeInsets.all(26),
                    child: Column(

                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          
                          Icon(Icons.water_drop_outlined,color: Colors.black,size: 30,),
                          
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(humidity,style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),),

                          Text("Percent")
                        ],
                      ),
                    
                   
                   
                   
                     height: 200,
                     
                     
                     
                     
                     ),
  

                   ), 
                  
                  
                ],
               ),
              
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  
                   Text("Made By Krunal"),
               Text("Data Provided by weatherapp.com")
          
                ],),
              )

            ], //main column
          ),
    ]  ),
      )),
    );
  }
}
