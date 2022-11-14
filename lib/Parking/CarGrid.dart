
import 'package:flutter/material.dart';
import 'package:murray_mobile_flutter/Parking/CarGridCell.dart';

class CarGrid extends StatelessWidget{

  const CarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5)
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: 14
          ),
          itemBuilder: (context, index){
            return CarGridCell(time: index > 5 ? "PM" : "AM");
          },
          itemCount: 12,
        ),
      )
    );
  }
}