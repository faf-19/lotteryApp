// import 'package:flutter/material.dart';
// import 'package:numberpicker/numberpicker.dart';

// class TicketPage2 extends StatefulWidget {
//   const TicketPage2({super.key});

//   @override
//   State<TicketPage2> createState() => _TicketPage2State();
// }

// class _TicketPage2State extends State<TicketPage2> {
//   int _currentValue = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: SizedBox(
//         height: 500,
//         width: 500,
//         child: NumberPicker(
//           axis: Axis.horizontal,
//           minValue: 1,
//           maxValue: 100,
//           value: _currentValue,
//           onChanged: (value) => setState(() => _currentValue = value),
//         ),
//       ),
//     );
//   }
// }