
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoMurrayPage extends StatelessWidget{
  const CupertinoMurrayPage({super.key});

  @override
  Widget build(BuildContext context) {

    var items = List<String>.generate(10000, (i) => 'Item $i');

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: const Border(),
        backgroundColor: CupertinoColors.destructiveRed.withOpacity(0.2),
      ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            child: Center(
              child: Text(
                index.toString(),
                style: const TextStyle(
                  color: CupertinoColors.activeBlue
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}