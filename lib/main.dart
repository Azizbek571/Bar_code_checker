
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inha_app/pages/login_page.dart';
import 'package:inha_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  // ChangeNotifierProvider(create: (context)=> ThemeProvider(),
  // child: const
   runApp(ChangeNotifierProvider(create:(context) => ThemeProvider(),
   child: const MyApp(),
   ));
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: lightMode,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const LoginPage(),
      
    );
  }
}

