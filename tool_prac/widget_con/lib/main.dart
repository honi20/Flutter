import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Myapp',
            theme: ThemeData(
                primaryColor: Colors.blue
            ),
            home: const MyPage(),
            debugShowCheckedModeBanner: false,
        );
    }
}

class MyPage extends StatelessWidget {
    const MyPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.blue,
            body: SafeArea(
                child: Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.symmetric(
                        vertical: 80,
                        horizontal: 20
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text('Hello'),
                ),
            ),
        );
    }
}