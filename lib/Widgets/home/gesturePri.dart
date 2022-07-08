import 'package:animated_container/Widgets/components/button_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class GesturePri extends StatelessWidget {
  GesturePri({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //lOGO
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InteractiveViewer(
                  child: Container(
                padding: EdgeInsets.all(20),
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('images/claro_tools.png'),
                        fit: BoxFit.fitWidth)),
              )),
              CircleAvatar(
                radius: 25,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        //PESQUISAR
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .20,
                //margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 60.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Pesquisar',
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 14.0),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 14.0,
                        color: Colors.grey,
                      )),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        //SERVIÇOS
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'MICROSERVIÇOS',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        //ICONES SERVIÇOS

        /*Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),*/
        SizedBox(height: 10),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),*/
        SizedBox(height: 10),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        )*/
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 3.0,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Text("serviço: $index"),
              );
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.copyright),
              ),
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.support),
              ),
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.exit_to_app),
              ),
            )
          ],
        )
      ],
    );
  }
}
