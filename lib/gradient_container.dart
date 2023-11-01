import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
//import 'package:flutter_application_1/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
 const GradientContainer(this.color1, this.color2, {super.key});

 const GradientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.deepPurple;
  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors}) ;

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration:   BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   }
// }
