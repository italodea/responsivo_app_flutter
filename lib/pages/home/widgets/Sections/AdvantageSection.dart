import 'package:flutter/material.dart';
import 'package:responsivo_app/breakpoints.dart';

class AdvantageSection extends StatelessWidget {
  Widget buildHorizontalAdvantage(String title, String subtitle) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }

  Widget buildVerticalAdvantage(String title, String subtitle) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(height: 4),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakPoint) {
          return Container(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 2))),
            child: Wrap(
              spacing: 8,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                buildHorizontalAdvantage(
                  "+45.000 alunos",
                  "Didática garantida",
                ),
                buildHorizontalAdvantage(
                  "+45.000 alunos",
                  "Didática garantida",
                ),
                buildHorizontalAdvantage(
                  "+45.000 alunos",
                  "Didática garantida",
                ),
              ],
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 2),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: buildVerticalAdvantage(
                      "+45.000 alunos", "Didática garantida"),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: buildVerticalAdvantage(
                      "+45.000 alunos", "Didática garantida"),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: buildVerticalAdvantage(
                      "+45.000 alunos", "Didática garantida"),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
