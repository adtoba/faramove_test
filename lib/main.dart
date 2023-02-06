import 'package:faramove_test/presentation/screens/dashboard/dashboard_page.dart';
import 'package:faramove_test/presentation/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FaraMove Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        )
      ),
      home: Builder(
        builder: (context) {
          SizeConfig.init(context);
          return const DashboardPage();
        }
      ),
    );
  }
}