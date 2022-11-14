import 'package:flutter/material.dart';

class CarGridCell extends StatefulWidget {
  const CarGridCell({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  State<CarGridCell> createState() => _CarGridCellState();
}

class _CarGridCellState extends State<CarGridCell> {

  bool selected = false;

  void selectCell(){
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectCell,
      child: Container(
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.car_repair_rounded,size: 30,color: selected ? Colors.red : Colors.black,),
            Text(widget.time)
          ],
        ),
      ),
    );
  }
}
