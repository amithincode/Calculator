
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calculator.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SimpleCalculator(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn.iconscout.com/icon/free/png-512/free-calculator-716-461701.png?f=webp&w=256https://cdn.iconscout.com/icon/free/png-512/free-calculator-716-461701.png?f=webp&w=256', // Replace 'logo.png' with your logo asset path
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Calculator',
              style: GoogleFonts.merriweather(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Simplify your math woes with our convenient calculator solution',textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}