
import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        appBar: AppBar(title: const Text("Flutter page")),
        body: const Center(
          child: Text("This section of the murray mobile app is written in flutter!")
        ),
      )
    );
  }


}