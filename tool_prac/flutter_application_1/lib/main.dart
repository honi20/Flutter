import 'package:flutter/material.dart';     //'fm'

// main함수가 다른 함수를 호출한다는 의미
void main() => runApp(const MyApp());

//'stl'
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First App',
        theme: ThemeData(               // 앱의 기본적인 테마 설정
            primarySwatch: Colors.blue          // 기본 색상
        ),
        home: MyHomePage(),             // 앱이 정상적으로 실행되었을 때 화면에서 가장 먼저 보여지는 경로
    );
  }
}

class MyHomePage extends StatelessWidget {
    const MyHomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('First app'),
            ),
            body: Center(
                child: Column(          // 세로로 배치
                    children: <Widget>[
                        Text('Hello'),
                        Text('Hello'),
                        Text('Hello')
                    ],
                ),
            ),
        );
    }
}