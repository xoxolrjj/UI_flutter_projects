import 'dart:ffi';
import 'dart:ui';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:cutambo_app/goTocart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.list_bullet),
          color: Colors.white,
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: const Icon(CupertinoIcons.search),
              color: Colors.white,
              tooltip: 'Search',
              onPressed: () {}),
        ],
        title: Text(
          "Welcome to Our App",
          style: GoogleFonts.blackHanSans(
            fontSize: 20,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 3, 70, 39),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                key: UniqueKey(),
                radius: 130,
                backgroundColor: Colors.black12,
                backgroundImage: AssetImage('assets/cutamboo.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Presents',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 20,
                  height: 2.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 8, 77, 45),
                ),
              ),
              Text(
                'CUTAMBOO',
                style: GoogleFonts.rakkas(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 8, 77, 45),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 8, 77, 45), // foreground
                    elevation: 5, //
                    backgroundColor:
                        Color.fromARGB(255, 11, 80, 41) // background
                    ),
                child: Text(
                  'Continue',
                  style: GoogleFonts.bitter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const secondPage()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.list_bullet),
          color: Colors.white,
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(CupertinoIcons.shopping_cart),
              color: Colors.white,
              tooltip: 'Go to Cart',
              onPressed: () {}),
        ],
        title: Text(
          "CUTAMBOO",
          style: GoogleFonts.raleway(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 3, 70, 39),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              key: UniqueKey(),
              radius: 40,
              backgroundColor: Colors.black12,
              backgroundImage: AssetImage('assets/cutamboo.jpg'),
            ),
            Text('ABOUT US',
                style: GoogleFonts.oswald(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 70, 39))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 80,
                    width: 60,
                    decoration: BoxDecoration(),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/me.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/me.jpg'),
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/me.jpg'),
                  ),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/me.jpg'),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10), // Add padding to the "Vision" text
                    decoration: BoxDecoration(
                      color: Colors.orange, // Set background color to orange
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors
                            .orange, // Set border color to match the background color
                        width: 5,
                      ),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'THE TEAM',
                      style: GoogleFonts.oswald(
                        color: Colors
                            .white, // Set text color to contrast with the background
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('assets/me.jpg'),
                    ),
                  ),
                ),
              ),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Vision',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'To provide innovative and efficient solutions simplifying food preparation '
                    'processes for individuals and businesses alike and providing innovative '
                    'and high-quality solutions to meet customer needs.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  constraints: BoxConstraints(maxWidth: 300),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Mission',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors
                        .greenAccent, // Set your desired background color here
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(
                      8), // Add padding to give some space around the text
                  child: Text(
                    'To provide innovative and efficient solutions simplifying food preparation processes for individuals and businesses alike and providing innovative and high-quality solutions to meet customer needs.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors
                          .black, // Set text color to contrast with the background
                    ),
                  ),
                  constraints: BoxConstraints(maxWidth: 300),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 8, 77, 45),
                    backgroundColor: Color.fromARGB(255, 11, 80, 41),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Text(
                    'Back ',
                    style: GoogleFonts.bitter(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const goToCart()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 8, 77, 45),
                    backgroundColor: Color.fromARGB(255, 11, 80, 41),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: GoogleFonts.bitter(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
