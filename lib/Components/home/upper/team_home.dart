import 'package:flutter/material.dart';

class TeamHome extends StatelessWidget {
  const TeamHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      ' Equipes : ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width * .20,
              height: MediaQuery.of(context).size.height * .07,
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
            ),
          ],
        ),
      ],
    );
  }
}
