import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_login/view/login/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Login',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      home: const LoginView(),
    );
  }
}
