import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tlaxiaco_travel_app/src/presentation/pages/homePages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tlaxiaco Travel',
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const HomePages(),
    );
  }
}
