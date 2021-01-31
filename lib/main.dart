import 'package:flutter/material.dart';
import 'package:focus_player/constants/constants.dart';
import 'package:focus_player/screens/home.dart';
import 'package:focus_player/screens/player.dart';
import 'package:focus_player/screens/playlist.dart';
import 'package:focus_player/screens/splash.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      
        primaryColor: kGrey
      ),
      initialRoute: SpashScreen.id,
      routes: {
        SpashScreen.id: (context) => SpashScreen(),
        Home.id: (context) => Home(),
        PlayList.id:(context)=> PlayList(),
        Player.id:(context)=>Player(),
      },
    );
  }
}
