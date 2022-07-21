import 'package:flutter/material.dart';

class UpperHome extends StatelessWidget {
  const UpperHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {},
              child: Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * .07,
                  height: MediaQuery.of(context).size.height * .04,
                  child: Center(
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffD52B1E),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            )),
        SizedBox(width: 10),
        Padding(
            padding: const EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {},
              child: Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * .07,
                  height: MediaQuery.of(context).size.height * .04,
                  child: Center(
                    child: Text(
                      'Widgets',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffD52B1E),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            )),
        SizedBox(width: 10),
        Padding(
            padding: const EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {},
              child: Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width * .09,
                  height: MediaQuery.of(context).size.height * .04,
                  child: Center(
                    child: Flexible(
                      child: Text(
                        'Microsserviços',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffD52B1E),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
