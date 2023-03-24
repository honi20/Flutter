import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Charactor card',
            home: MyCard(),
        );
    }
}

class MyCard extends StatelessWidget {
    const MyCard({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('BBANTO'),
                centerTitle: true,
                backgroundColor: Colors.redAccent,
                elevation: 0.0,
            ),
            body: Center(
                child: Column(
                    // 세로 기준 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Hello'),
                        Text('Hello'),
                        Text('Hello'),
                    ],
                ),
            ),
        );
    }
}