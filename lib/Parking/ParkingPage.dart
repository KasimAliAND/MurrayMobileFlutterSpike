import 'package:flutter/material.dart';
import 'Booking/BookingPage.dart';

class ParkingPage extends StatelessWidget {
  const ParkingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Column(
        children: [

          GestureDetector(
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BookingPage()));},
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Book your Parking space"),
                  Icon(Icons.car_repair,size: 100,),
                ],
              ),
            ),
          ),

          const SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5)
              ),
              child: const Text("Public parking spots nearby"),
            ),
          ),

          const SizedBox(height: 40),

          Row(
            children: [
              Container(
                color: Colors.grey,
                padding: const EdgeInsets.only(left: 40,right: 40, top: 20, bottom: 20),
                child: const Icon(Icons.image),
              ),
              const SizedBox(width: 5),
              Container(
                color: Colors.grey,
                padding: const EdgeInsets.only(left: 40,right: 40, top: 20, bottom: 20),
                child: const Icon(Icons.image),
              ),
              const SizedBox(width: 5),Container(
                color: Colors.grey,
                padding: const EdgeInsets.only(left: 40,right: 40, top: 20, bottom: 20),
                child: const Icon(Icons.image),
              ),
              const SizedBox(width: 5),
            ]
          ),

          const SizedBox(height: 40),

          ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
              onPressed: (){},
              child: const Text("Register Car")
          )
        ],
      ),
    );
  }
}
