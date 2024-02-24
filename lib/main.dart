import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prolingo_app/feature/login/login_view.dart';

//import 'package:prolingo_app/feature/splash/splash_view.dart';
import 'package:prolingo_app/product/constants/color_constants.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hoverColor: Colors.yellow,
          iconColor: Colors.orange,
          fillColor: ColorConstants.primaryColor,
          suffixIconColor: ColorConstants.primaryTextColor,
        ),
      ),
      home: const LoginView(),
    );
  }
}
