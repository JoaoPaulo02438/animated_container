import 'package:animated_container/widgets/widget_circle_avatar.dart';
import 'package:flutter/material.dart';

class TeamHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            ' Equipes : ',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          WidgetCircleAvatar(
            color: Colors.yellow,
            radius: 20,
            backgroundImage: NetworkImage(
                'https://storage.googleapis.com/production-hostgator-brasil-v1-0-8/168/402168/mIDsiod9/3c6176441f12428f8040b9944a123aef'),
          ),
          SizedBox(width: 10),
          WidgetCircleAvatar(
            color: Colors.green,
            radius: 20,
            backgroundImage: NetworkImage(
                'https://storage.googleapis.com/production-hostgator-brasil-v1-0-8/168/402168/mIDsiod9/3c6176441f12428f8040b9944a123aef'),
          ),
          SizedBox(width: 10),
          WidgetCircleAvatar(
            color: Colors.yellow,
            radius: 20,
            backgroundImage: NetworkImage(
                'https://storage.googleapis.com/production-hostgator-brasil-v1-0-8/168/402168/mIDsiod9/3c6176441f12428f8040b9944a123aef'),
          ),
          SizedBox(width: 10),
          WidgetCircleAvatar(
            color: Colors.green,
            radius: 20,
            backgroundImage: NetworkImage(
                'https://storage.googleapis.com/production-hostgator-brasil-v1-0-8/168/402168/mIDsiod9/3c6176441f12428f8040b9944a123aef'),
          ),
          SizedBox(width: 10),
        ],
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
    );
  }
}
