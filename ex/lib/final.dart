import 'package:flutter/material.dart';

class finalscreen extends StatelessWidget {
  final int counter;

  finalscreen({required this.counter, super.key});

  static const List<String> aboutList = [
    'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun\'s magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.',
    'Mercury is the smallest planet in our solar system and the closest to the Sun. It has no atmosphere to retain heat, resulting in extreme temperature variations between day and night. Mercury\'s surface is heavily cratered and resembles the Moon, with evidence of past volcanic activity.',
    'Venus is often referred to as Earth\'s twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.',
    'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
    'Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA\'s Perseverance rover is currently searching for signs of ancient microbial life on the planet\'s surface.',
    'Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.',
    'Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn\'s largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.',
    'Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus\'s atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.',
    'Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.',
  ];

  static const List<String> planet3DModels = [
    "asset/sun.png",
    "asset/mercury.png",
    "asset/venus.png",
    "asset/earth.png",
    "asset/mars.png",
    "asset/jupiter.png",
    "asset/saturn.png",
    "asset/uranus.png",
    "asset/neptune.png",
  ];

  static const List<int> distancesFromSunKm = [
    0,
    57909227,
    108209072,
    149598026,
    227943824,
    778547669,
    1426666422,
    2870990000,
    4498252900
  ];
  static const List<double> lengthOfDayHours = [
    0,
    1407.60,
    5832.20,
    23.93,
    24.62,
    9.92,
    10.66,
    17.24,
    16.11
  ];
  static const List<double> orbitalPeriodYears = [
    0,
    0.24,
    0.62,
    1,
    1.88,
    11.86,
    29.46,
    84.01,
    164.8
  ];
  static const List<double> radiiKm = [
    695700,
    2439.70,
    6051.80,
    6371,
    3389.50,
    69911,
    58232,
    25362,
    24622
  ];
  static const List<String> massesKg = [
    '1.989 × 10³⁰',
    '3.301 × 10²³',
    '4.867 × 10²⁴',
    '5.972 × 10²⁴',
    '6.39 × 10²³',
    '1.898 × 10²⁷',
    '5.683 × 10²⁶',
    '8.681 × 10²⁵',
    '1.024 × 10²⁶'
  ];
  static const List<double> gravityMs2 = [
    274,
    3.7,
    8.87,
    9.81,
    3.71,
    24.79,
    10.44,
    8.69,
    11.15
  ];
  static const List<String> surfaceAreasKm2 = [
    '6.09 × 10¹²',
    '7.48 × 10⁷',
    '4.60 × 10⁸',
    '5.10 × 10⁸',
    '1.45 × 10⁸',
    '6.21 × 10¹⁵',
    '4.27 × 10¹⁵',
    '8.1 × 10¹⁵',
    '7.65 × 10¹⁵'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            children: [
              const Positioned.fill(
                child: Image(
                  image: AssetImage("asset/Rectangle 4.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black54, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEE403D),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                      height: 350,
                      width: 350,
                      child: Image.asset(planet3DModels[counter])),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0),
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  aboutList[counter],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Distance from Sun (km) : ${distancesFromSunKm[counter]} km\n\n'
                  'Length of Day (hours) : ${lengthOfDayHours[counter]} hours\n\n'
                  'Orbital Period (Earth years) :  ${orbitalPeriodYears[counter]} \n\n'
                  'Radius (km) :  ${radiiKm[counter]} \n\n'
                  'Mass (kg) :  ${massesKg[counter]}\n\n'
                  'Gravity (m/s²) :  ${gravityMs2[counter]} \n\n'
                  'Surface Area (km²) : ${surfaceAreasKm2[counter]} ',
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
