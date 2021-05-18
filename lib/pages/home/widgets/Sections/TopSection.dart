import 'package:flutter/material.dart';
import 'package:responsivo_app/breakpoints.dart';

import '../CustomSearchField.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxwidth = constraints.maxWidth;
        if (maxwidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                AspectRatio(
                  aspectRatio: 3.2,
                  child: Image.network(
                    "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1200",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 450,
                      child: Column(
                        children: [
                          Text(
                            "Aprenda os melhores cursos com desconto",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bora aprender! Cursos a partir de R\$22,90 e assista em qualquer aparelho que você tiver a sua disposição e com certificado grátis*",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        } else if (maxwidth >= mobileBreakPoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1200",
                    fit: BoxFit.cover,
                  ),
                  height: 250,
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 350,
                      child: Column(
                        children: [
                          Text(
                            "Aprenda os melhores cursos com desconto",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bora aprender! Cursos a partir de R\$22,90 e assista em qualquer aparelho que você tiver a sua disposição e com certificado grátis*",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1200",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Aprenda os melhores cursos com desconto",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Bora aprender! Cursos a partir de R\$22,90 e assista em qualquer aparelho que você tiver a sua disposição e com certificado grátis*",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomSearchField(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
