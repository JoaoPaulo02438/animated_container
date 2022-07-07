import 'package:animated_container/Widgets/gesturePrincipal.dart';
import 'package:animated_container/Widgets/gestureRecolhido.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Row(
          children: [
            select ? GesturePrincipal() : GestureRecolhido(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('HOME')),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text('FERRAMENTAS')),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text('NOTIFICAÇÕES')),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget GesturePrincipal() {
    return GestureDetector(
      onTap: () {
        setState(() {
          select = !select;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 143, 5, 12),
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.topCenter,
          duration: Duration(seconds: 1),
          height: MediaQuery.of(context).size.height / 0.9,
          width: MediaQuery.of(context).size.height / 3.0,
          child: Column(
            children: [
              //lOGO
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.logo_dev,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.login,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(hintText: 'pesquisar'),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
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
              SizedBox(height: 10),
              //ICONES SERVIÇOS
              Row(
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
              ),
              SizedBox(height: 20),
              Row(
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
              ),
              SizedBox(height: 20),
              Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget GestureRecolhido() {
    return GestureDetector(
      onTap: () {
        setState(() {
          select = !select;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 143, 5, 12),
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.topLeft,
          duration: Duration(seconds: 1),
          height: MediaQuery.of(context).size.height / 0.4,
          width: MediaQuery.of(context).size.height / 10.0,
          child: Column(
            children: [
              //lOGO
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.logo_dev),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              //LOGIN
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.login),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Divider(
                height: 30,
                color: Colors.white,
              ),
              //SERVIÇOS
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [select ? Text('MICROSERVIÇOS') : Text('')],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, color: Colors.white, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, color: Colors.white, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, color: Colors.white, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.dashboard, color: Colors.white, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.dashboard, color: Colors.white, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.dashboard, color: Colors.white, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: Colors.white, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: Colors.white, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: Colors.white, size: 30),
                  ),
                ],
              ),
              Divider(
                height: 30,
                color: Colors.white,
              ),
              //INFERIOR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.support, color: Colors.white, size: 30),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
