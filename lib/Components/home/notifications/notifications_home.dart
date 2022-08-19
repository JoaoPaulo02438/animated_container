// ignore_for_file: prefer_const_constructors

import 'package:animated_container/Widgets/widget_notifications_card.dart';
import 'package:flutter/material.dart';

class NotificationHome extends StatelessWidget {
  const NotificationHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        WidgetNotificationsCard(
          nome: 'Francisca Maria ',
          cargo: 'Analista',
          fontSize: 10,
          padding: EdgeInsets.all(12.0),
          mensagem: 'postado ás 14:37 em 21/07/2022',
          postagem: 'postado ás 14:37 em 21/07/2022',
        ),
        SizedBox(width: 10),
        WidgetNotificationsCard(
          nome: 'Francisca Maria ',
          cargo: 'Analista',
          fontSize: 10,
          padding: EdgeInsets.all(12.0),
          mensagem: 'postado ás 14:37 em 21/07/2022',
          postagem: 'postado ás 14:37 em 21/07/2022',
        ),
        SizedBox(width: 10),
        WidgetNotificationsCard(
          nome: 'Francisca Maria ',
          cargo: 'Analista',
          fontSize: 10,
          padding: EdgeInsets.all(12.0),
          mensagem: 'postado ás 14:37 em 21/07/2022',
          postagem: 'postado ás 14:37 em 21/07/2022',
        ),
      ],
    );
  }
}
