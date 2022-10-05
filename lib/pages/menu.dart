import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'calculator.dart';
import 'manual.dart';

class FirstRoute extends StatefulWidget {
  const FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRoute();
}

class _FirstRoute extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Меню'),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            Center(
              child: new SizedBox(
                width: 130,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                    child: const Text('Калькулятор'),
                  ),
                ),
              ),
            ),
            Center(
              child: new SizedBox(
                width: 130,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThirdRoute()),
                      );
                    },
                    child: const Text('Инструкция'),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
