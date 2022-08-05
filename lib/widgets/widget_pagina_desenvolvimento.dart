import 'package:flutter/material.dart';

class PaginaDesenvolvimento extends StatelessWidget {
  const PaginaDesenvolvimento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Center(
        child: Container(
          child: Text(
            'Página em Desenvolvimento...',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
