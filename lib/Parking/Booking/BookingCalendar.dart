import 'package:flutter/material.dart';

class BookingCalendar extends StatelessWidget {
  const BookingCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5)
      ),
      child: Column(
        children:[
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
              child: Text("Pick a day:")
            ),
          ),
          CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 1)),
              onDateChanged: (date){},
          )
        ],
      ),
    );
  }
}
