import 'package:ex/final.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ex/final.dart';

//import 'package:flutter_3d_controller/flutter_3d_controller.dart';
/* Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetailsScreen(
                          currentPlanetIndex: currentPlanetIndex),
                  ), */
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final List<String> planets = [
    'Sun',
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune'
  ];
  final List<String> planetImages = [
    'asset/sun.png',
    'asset/mercury.png',
    'asset/venus.png',
    'asset/earth.png',
    'asset/mars.png',
    'asset/jupiter.png',
    'asset/saturn.png',
    'asset/uranus.png',
    'asset/neptune.png'
  ];

  int counter = 0;

  void navigatePlanet(int direction) {
    setState(() {
      if (direction == 1) {
        if (counter == planets.length - 1) {
          counter = 0;
        } else {
          counter++;
        }
      } else if (direction == -1) {
        if (counter == 0) {
          counter = planets.length - 1;
        } else {
          counter--;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        //
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Image.asset(
                  'asset/Rectangle 4.png',
                  fit: BoxFit.cover,
                )),
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Explore',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      'which plant \n would you like to explore ?',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                planetImages[counter],
                height: 360,
                width: 360,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => navigatePlanet(-1),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    planets[counter],
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => navigatePlanet(1),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Expanded(
                child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'Explore ${planets[counter]}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      finalscreen(counter: counter),
                                ));
                          },
                          icon: Icon(Icons.arrow_forward),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25)))),
                          iconSize: 22,
                        ),
                      )
                    ],
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
