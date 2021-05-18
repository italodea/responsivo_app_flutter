import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://miro.medium.com/max/750/0*e-3aW5EJ42Bfk26J.jpg",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: AutoSizeText(
            "Criação de Apps Android e iOS com Flutter - Crie 100 apps em uma noite",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
            minFontSize: 3,
          ),
        ),
        Text("Professor",
            style: TextStyle(
                fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w400)),
        Text(
          "R\$22,90",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
