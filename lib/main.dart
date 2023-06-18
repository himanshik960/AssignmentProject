import 'package:flutter/material.dart';
import 'package:himanshiproject/screens/home_screen.dart';
import 'package:himanshiproject/model/tab_model.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TabModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Color(0xFFF48FB1),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
