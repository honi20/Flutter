import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue
            ),
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
                title: const Text('Scaffold Messenger'),
            ),
            
            body: const HomeBody(),
            floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.thumb_up),
                onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: const Text('Like a new Snack bar!'),
                            duration: const Duration(seconds: 5),
                            action: SnackBarAction(
                                label: 'Undo', 
                                onPressed: (){
                                    Navigator.push(
                                        context, 
                                        MaterialPageRoute(builder: (context) => ThirdPage())
                                    );
                                }
                            ),
                        )
                    );
                }
            ),
        );
    }
}

class HomeBody extends StatelessWidget {
    const HomeBody({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Center(
            child: ElevatedButton(
                child: const Text('Go to the second page'),
                onPressed: (){
                    Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const SecondPage())
                    );
                },
            )
        );
    }
}

class SecondPage extends StatelessWidget {
    const SecondPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Second Page'),
            ),

            body: const Center(
                child: Text(
                    '"좋아요"가 추가되었습니다.',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.redAccent
                    ),
                )
            ),
        );
    }
}

// 제공된 Scaffold Messenger 사용
/*
class ThirdPage extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Third Page'),
            ),

            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text('"좋아요"를 취소하시겠습니까?"',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.redAccent
                            ),
                        ),

                        ElevatedButton(
                            onPressed: (){
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('"좋아요"가 취소되었습니다.'),
                                        duration: Duration(seconds: 3),
                                    )
                                );
                            } ,
                            child: const Text('취소하기'),
                        )
                    ]
                ),
            ),
        );
    }
}
*/

// 다른 페이지로 이동 시 스낵바를 바로 사라지게 하려면 개별적인 Scaffold Messenger을 생성해야 함
// 142줄의 ScaffoldMessenger는 루트가 아니기 때문에 자손 Scaffold에 대한 정보 가지고 있지 않음
// 따라서 Scaffold 위젯 안에서 Builder 위젯을 통해 새로운 context를 생성한 후 
// ScaffoldMessenger.of 메소드에 전달해주어야 함
class ThirdPage extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return ScaffoldMessenger(
            child: Scaffold(
                appBar: AppBar(
                    title: const Text('Third Page'),
                ),
            
                body: Builder(
                    builder: (context){
                        return Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    const Text('"좋아요"를 취소하시겠습니까?"',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.redAccent
                                        ),
                                    ),
                                    
                                    ElevatedButton(
                                        onPressed: (){
                                            ScaffoldMessenger.of(context).showSnackBar(
                                                const SnackBar(
                                                    content: Text('"좋아요"가 취소되었습니다.'),
                                                    duration: Duration(seconds: 3),
                                                )
                                            );
                                        } ,
                                        child: const Text('취소하기'),
                                    )
                                ]
                            ),
                        );
                    }
                ),
            ),
        );
    }
}