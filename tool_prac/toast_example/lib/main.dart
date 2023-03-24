import 'package:flutter/material.dart';
// pubspec.yaml의 line 37 추가
import 'package:fluttertoast/fluttertoast.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return const MaterialApp(
            title: 'Toast Message',
            home: MyPage(),
            debugShowCheckedModeBanner: false,
        );
    }
}

class MyPage extends StatelessWidget {
    const MyPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Toast Message'),
                centerTitle: true,
            ),

            body: Center(
                child: TextButton(
                    onPressed: (){
                        flutterToast();
                    },
                    child: Text('Toast'),
                    style: TextButton.styleFrom(
                        primary: Colors.black87,
                        backgroundColor: Colors.blue
                    ),
                ),
            ),
        );
    }
}

void flutterToast(){
    Fluttertoast.showToast(
        msg: 'Flutter',
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.redAccent,
        fontSize: 20.0,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT
    );
}