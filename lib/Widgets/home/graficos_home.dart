import 'package:flutter/material.dart';

class GraficosHome extends StatelessWidget {
  const GraficosHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Container(
              child: IconButton(
                alignment: Alignment.centerLeft,
                icon: Icon(
                  Icons.more_horiz,
                ),
                onPressed: () {},
              ),
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
            ),
            SizedBox(width: 10),
            Container(
              //padding: EdgeInsets.only(left: 180, top: 150),
              child: IconButton(
                alignment: Alignment.centerLeft,
                icon: Icon(
                  Icons.more_horiz,
                ),
                onPressed: () {},
              ),
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
            ),
            SizedBox(width: 10),
            Container(
              //padding: EdgeInsets.only(left: 180, top: 150),
              child: IconButton(
                alignment: Alignment.centerLeft,
                icon: Icon(
                  Icons.more_horiz,
                ),
                onPressed: () {},
              ),
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
            ),
          ],
        ),
      ],
    );
  }
}
