import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'manual.dart';
import 'menu.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRoute();
}

class _SecondRoute extends State<SecondRoute> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  var a;
  var b;
  String _text = "Сумма";
  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  String div() {
    a = int.parse(myController.text);
    b = int.parse(myController2.text);
    return (a - b).toString();
  }

  String sum() {
    a = int.parse(myController.text);
    b = int.parse(myController2.text);
    return (a + b).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Калькулятор'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: new SizedBox(
                width: 130,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstRoute()),
                      );
                    },
                    child: const Text('В меню'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                key: Key("NumberOne"),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: myController,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: FloatingActionButton(
                heroTag: "T1",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(sum()),
                      );
                    },
                  );
                },
                child: Text("+"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: FloatingActionButton(
                heroTag: "T2",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(div()),
                      );
                    },
                  );
                },
                child: Text("-"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                key: Key("NumberTwo"),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: myController2,
              ),
            ),
          ],
        ));
  }
}
