import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class goToCart extends StatefulWidget {
  const goToCart({super.key});

  @override
  State<goToCart> createState() => _goToCartState();
}

class _goToCartState extends State<goToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            //shopname
            Text(
              'CUTAMBOO',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/cutamboo.jpg'),
            ),
            //title
            Text(
              'Welcome to Cutamboo',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //subtitle

            //get started button
          ],
        ),
      ),
    );
  }
}
// appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(CupertinoIcons.list_bullet),
      //     color: Colors.white,
      //     tooltip: 'Menu Icon',
      //     onPressed: () {},
      //   ),
      //   actions: [
      //     IconButton(
      //         icon: Icon(CupertinoIcons.shopping_cart),
      //         color: Colors.white,
      //         tooltip: 'Go to Cart',
      //         onPressed: () {}),
      //   ],
      //   title: Text(
      //     "CUTAMBOO",
      //     style: GoogleFonts.raleway(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      //   backgroundColor: Color.fromARGB(255, 3, 70, 39),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(35),
      //   child: Column(
      //     children: [
      //       Center(
      //         child: CircleAvatar(
      //           key: UniqueKey(),
      //           radius: 80,
      //           backgroundColor: Colors.black12,
      //           backgroundImage: AssetImage('assets/cutamboo.jpg'),
      //         ),
      //       ),
      //       Text(
      //         'CUMTABOO',
      //         style: GoogleFonts.raleway(
      //             fontSize: 50, fontWeight: FontWeight.bold),
      //       ),
      //     ],
      //   ),
      // ),