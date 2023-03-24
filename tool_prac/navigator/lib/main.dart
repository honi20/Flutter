import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'First page',
            home: FirstPage(),
            debugShowCheckedModeBanner: false,
        );
    }
}

class FirstPage extends StatelessWidget {
    const FirstPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('First page'),
            ),

            body: Center(
                child: ElevatedButton(
                    child: Text('Go to the Second Page'),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (_) => SecondPage()
                        ));
                    },
                ),
            ),
        );
    }
}

class SecondPage extends StatelessWidget {
    const SecondPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext ctx) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Second page'),
            ),

            body: Center(
                child: ElevatedButton(
                    child: Text('Go to the First Page'),
                    onPressed: (){
                        Navigator.pop(ctx);
                    },
                ),
            ),
        );
    }
}