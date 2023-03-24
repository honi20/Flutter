import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
    const ScreenA({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('ScreenA'),
            ),

            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextButton(
                            child: Text('Go to ScreenB'),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                primary: Colors.black
                            ),
                            onPressed: (){
                                Navigator.pushNamed(context, '/b');
                            },
                        ),

                        TextButton(
                            child: Text('Go to ScreenC'),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                primary: Colors.black
                            ),
                            onPressed: (){
                                Navigator.pushNamed(context, '/c');
                            },
                        )
                    ],
                ),
            ),
        );
    }
}