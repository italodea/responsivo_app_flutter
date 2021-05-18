import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(
                      color: Colors.grey.shade600,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey.shade500,
                          ),
                          onPressed: null),
                      const SizedBox(width: 4),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Que tal pesquisar por dart...",
                              isCollapsed: true,
                              focusColor: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width:22),
              if (constraints.maxWidth >= 400)
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Aprender",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              if (constraints.maxWidth >= 500)
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Flutter",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
