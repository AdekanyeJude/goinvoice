import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/home/home_screen.dart';
import 'package:go_invoice/screens/home/input_screen.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';
import 'package:go_invoice/screens/utills/toast.dart';
// import 'package:internet_popup/internet_popup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    internet();
  }

  load() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  internet() async {
    // try {
    // var result = await InternetPopup().checkInternet();
    // InternetPopup().initialize(context: context, onTapPop: true);
    // if (result) {
    setState(() {
      load();
    });
    // } else {
    // showToast('Please check your internet connection', colorCodes.redAccent,
    // context);
    // InternetPopup().initialize(context: context, onTapPop: true);
    // }
    // } catch (e) {
    // print(e.toString());
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCodes.background,
      body: Align(
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/invoice.png',
                    width: 150, height: 105),
                heightsizedBox(20.0),
                Text(
                  'INVOICE GO',
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: colorCodes.white,
                  ),
                ),
                heightsizedBox(10.0),
                Text(
                  "We make proficient invoices and bills ",
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: colorCodes.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
