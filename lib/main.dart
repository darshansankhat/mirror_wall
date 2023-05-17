import 'package:flutter/material.dart';
import 'package:mirror_wall/Bottom_bar/Bottom_bar.dart';
import 'package:mirror_wall/Bottom_provider/Bottom_provider.dart';
import 'package:mirror_wall/Browser_app/Provider_class/Browser_provider.dart';
import 'package:mirror_wall/Education_app/Provider_class/Education_provider.dart';
import 'package:mirror_wall/Education_app/View_screens/Uri_open_screen.dart';
import 'package:mirror_wall/OTT_app/Provider_class/Ott_provider.dart';
import 'package:mirror_wall/OTT_app/View_screens/usi_screen.dart';
import 'package:mirror_wall/Splash_screen/Splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Bottom_provider(),),
        ChangeNotifierProvider(create: (context) => Browser_provider(),),
        ChangeNotifierProvider(create: (context) => Education_provider(),),
        ChangeNotifierProvider(create: (context) => Ott_provider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "splash",
        routes: {
          "/":(context) => Bottom_bar(),
          "uriedu":(context) => Uri_open_screen(),
          "uri":(context) => Uri_screen(),
          "splash":(context) => Splash_screen(),
        },
        theme: ThemeData.dark(),
      ),
    ),
  );
}
