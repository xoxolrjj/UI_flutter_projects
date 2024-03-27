import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysecondapp/components/food_tile.dart';
import 'package:mysecondapp/models/food.dart';
import 'package:mysecondapp/theme/colors.dart';
import 'package:mysecondapp/components/button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
      name: 'CUTAMBO CUTTER',
      price: '30.00',
      imagePath: 'assets/logo2.png',
      rating: '4.5',
    ),
    Food(
      name: 'CUTAMBO CUTTER',
      price: '30.00',
      imagePath: 'assets/logo3.png',
      rating: '4.5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          CupertinoIcons.list_dash,
          color: Colors.grey[900],
        ),
        title: Text(
          'Cutamboso',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME TO CUTAMBOO',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 212, 214, 186),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      text: 'CUTAMBOO CUTTER',
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset(
                  'assets/logo2.png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'CUTAMBOO CUTTER MENU',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length, // Add this line

              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
