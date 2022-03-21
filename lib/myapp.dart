import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qlorian_app/pages/signup_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: const Center(
          child: SignUpPage(),
        ),
        theme: ThemeData(scaffoldBackgroundColor: const Color(0XFFEEECEC)));
  }
}
