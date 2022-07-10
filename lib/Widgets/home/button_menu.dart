import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('HOME')),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('FERRAMENTAS')),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('NOTIFICAÇÕES')),
          ],
        ));
  }
}
