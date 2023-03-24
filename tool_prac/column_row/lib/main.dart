import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Col_Row',
            home: MyPage(),
        );
    }
}

class MyPage extends StatelessWidget {
    const MyPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            
            backgroundColor: Colors.teal,
            body: SafeArea(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        Container(
                            height: 100,
                            color: Colors.white,
                            child: Text('Container 1'),
                        ),

    
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.blue,
                            child: Text('Container 2'),
                        ),
                
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.red,
                            child: Text('Container 3'),
                        ),

                    ]
                ),
            ),
        );
    }
}