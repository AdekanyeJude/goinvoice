import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_invoice/screens/splashscreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Invoice',
      theme: ThemeData(
          // colorScheme: colorScheme.copyWith(background: Colors.white),
          ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      // color: HexColor("#62C14F"),
    );
  }
}
