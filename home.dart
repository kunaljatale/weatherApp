import 'package:flutter/material.dart';
import 'package:node_project/worker/worker.dart';
// import 'package:node_project/seconddart.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  late String location;
  late String Region;
  late String Country;
  late String Tempreture;
  late String AirSpeed;
  late String Humidity;
  //  String City="Bhoal";

  start() async {
    Worker instance = Worker(location: "Bhopal");
      

    await instance.getData();

    location = instance.location;
    Region = instance.region;
    Country = instance.Country;
    Tempreture = instance.temp;
    AirSpeed = instance.speed;
    Humidity = instance.humidity;

    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/second", arguments: {
        "temp": Tempreture,
        "location": location,
        "Region": Region,
        "Country": Country,
        "AirSpeed": AirSpeed,
        "Humidity": Humidity,
        // "City_value":City,
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    start();
    // getData();
     print(Tempreture);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context,"/second",arguments:{
              "temp":Tempreture,
              "location":location,
              "Region":Region,
              "Country":Country,
              "AirSpeed":AirSpeed,
            "Humidity":Humidity
            } );
          },
          backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                  color: Colors.blue[200],
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    "images/weather.jpg",
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitHeight,
                  )),
              SizedBox(
                height: 30,
              ),
              Text("Mausam App",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 30,
              ),
              SpinKitThreeBounce(
                color: Color.fromARGB(255, 15, 12, 12),
                size: 50,
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Made bu krunal",
                    style: TextStyle(color: Colors.black45),
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[200],
    );
  }
}
