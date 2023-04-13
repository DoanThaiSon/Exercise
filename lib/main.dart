import 'package:flutter/material.dart';
import 'package:myapp/flutter_buoi2_btvn/bai_tap_thiet_ke.dart';
import 'package:myapp/flutter_buoi3_listview/bai_tap_listview.dart';
import 'package:myapp/flutter_buoi4_login/bai_tap_login.dart';
import 'package:myapp/lythuyet_images.dart';
import 'package:myapp/todoApp/todo_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: (settingsK) {
        switch (settingsK.name) {
          case "/":
            return MaterialPageRoute(
              builder: (context) => const LoginPage(
              ),
            );
          case "/screen2":
            return MaterialPageRoute(
              builder: (context) => const BaiTap3(),
            );
          case "/screen3":
        }
        return null;
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ImageProject();
  }
}
