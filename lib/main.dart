import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/pages/menu.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:counter_app/main.dart';

void main() {
  enableFlutterDriverExtension();

  runApp(const MaterialApp(
    title: 'Navigation Basics',
    // home: MyApp(),
    home: FirstRoute(),
  ));
}
