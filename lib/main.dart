import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_invoice/screens/home/invoice_item_model.dart';
import 'package:go_invoice/screens/home/invoice_model.dart';
import 'package:go_invoice/screens/splashscreen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(InvoiceAdapter());
  Hive.registerAdapter(InvoiceItemAdapter());

  await Hive.openBox<Invoice>('invoices');

  runApp(MyApp());
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
