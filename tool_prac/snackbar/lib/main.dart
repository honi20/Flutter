// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Snack Bar',
            theme: ThemeData(primarySwatch: Colors.red),
            home: const MyPage(),
        );
    }
}

class MyPage extends StatelessWidget {
    const MyPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Snack Bar'),
                centerTitle: true,
            ),

            body: Builder(
                builder: (BuildContext ctx){
                    return Center(
                        child: TextButton(
                        // ignore: sort_child_properties_last
                            child: const Text(
                                'Show Me',
                                style: TextStyle(color: Colors.white),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                            ),
                            
                            onPressed: () {
                                ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
                                    content: Text('Hello'),
                                ));
                            },
                        ),
                    );
                }
            )
        );
    }
}

