import 'package:flutter/material.dart';

class WidgetNotificationsCard extends StatelessWidget {
  const WidgetNotificationsCard({
    Key? key,
    required this.padding,
    required this.nome,
    required this.cargo,
    required this.fontSize,
    required this.mensagem,
    required this.postagem,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final String nome;
  final String cargo;
  final double fontSize;
  final String mensagem;
  final String postagem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .20,
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nome,
                      style: TextStyle(
                        fontSize: fontSize,
                      ),
                    ),
                    Text(
                      cargo,
                      style: TextStyle(
                        fontSize: fontSize,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  mensagem,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  postagem,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
