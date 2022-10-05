import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'calculator.dart';
import 'menu.dart';

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({super.key});

  @override
  State<ThirdRoute> createState() => _ThirdRoute();
}

class _ThirdRoute extends State<ThirdRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Инструкция'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Text("Здесь должна быть инструкция"),
            ),
            Center(
              child: new SizedBox(
                width: 130,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstRoute()),
                      );
                    },
                    child: const Text(' В Меню'),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
