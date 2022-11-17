import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:murray_mobile_flutter/Cupertino/CupertinoNavigator.dart';
import 'package:murray_mobile_flutter/TabbedNavigationBar.dart';

void main() {
  runApp(MyApp());
  //runApp(const MyCupertinoApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const TabbedNavigationBar(),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp>{

  bool _isLoggedIn = false;

  void _setIsLoggedIn() {
    setState(() {
      _isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _isLoggedIn ? const Scaffold(body: TabbedNavigationBar()) :
        Center(
          child: ElevatedButton(
            onPressed: _setIsLoggedIn,
            child: const Text("Log in with Okta"),
          ),
        ),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoTabbedNavigationBar(),
    );
  }
}