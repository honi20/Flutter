import 'package:flutter/material.dart';
import 'package:multi_nav/ScreenB.dart';
import 'package:multi_nav/ScreenC.dart';
import 'ScreenA.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            initialRoute: '/',
            debugShowCheckedModeBanner: false,
            routes: {
                '/': (context) => ScreenA(),
                '/b': (context) => ScreenB(),
                '/c':(context) => ScreenC()
            },

        );
    }
}

