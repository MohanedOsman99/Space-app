import 'package:ex/home.dart';
import 'package:flutter/material.dart';
import 'package:ex/home.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFFF),
        body: Stack(
          children: [
            Positioned(
                child: Image.asset(
              'asset/Frame 1.png',
              fit: BoxFit.cover,
            )),
            Positioned(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Explore the Universe',
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )),
            Positioned(
              bottom: 1,
              left: 3,
              right: 3,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Explore',
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
                                  const homescreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
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
            ),
          ],
        ),
      ),
    );
  }
}
