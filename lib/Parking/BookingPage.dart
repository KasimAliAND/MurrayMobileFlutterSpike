
import 'package:flutter/material.dart';
import 'package:murray_mobile_flutter/Parking/BookingCalendar.dart';

import 'CarGrid.dart';

class BookingPage extends StatelessWidget{
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Book your parking space")
          ),
          const BookingCalendar(),
          const CarGrid(),
          ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
              onPressed: (){},
              child: const Text("Book")
          )
        ],
      ),
    );
  }
}