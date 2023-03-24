import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Appbar',
            theme: ThemeData(
                primarySwatch: Colors.red
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
                title: const Text('Appbar'),
                centerTitle: true,
                elevation: 0.0,

                actions: [
                    IconButton(
                        icon: const Icon(Icons.shopping_cart), 
                        onPressed: () { 
                            print('Shopping cart button is clicked');
                        },
                    ),

                    IconButton(
                        icon: const Icon(Icons.search), 
                        onPressed: () { 
                            print('Search button is clicked');
                        },
                    ),
                ],
            ),

            drawer: Drawer(
                child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                        UserAccountsDrawerHeader(

                            currentAccountPicture: const CircleAvatar(
                                backgroundImage: AssetImage('assets/jjang.png'),
                                backgroundColor: Colors.white,
                            ),

                            // ignore: prefer_const_literals_to_create_immutables
                            otherAccountsPictures: [
                                const CircleAvatar(
                                    backgroundImage: AssetImage('assets/mini.png'),
                                    backgroundColor: Colors.white,
                                )
                            ],

                            accountName: const Text('YHYH'),
                            accountEmail: const Text('YHYH@gmail.com'),
                            onDetailsPressed: (){
                                print('arrow is clicked');
                            },

                            decoration: BoxDecoration(
                                color: Colors.red[200],
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40.0),
                                    bottomRight: Radius.circular(40.0)
                                )
                            ),

                        ),

                        ListTile(
                            leading: Icon(Icons.home, color: Colors.grey[850],),
                            title: const Text('Home'),
                            onTap: (){
                                print('Home is clicked');
                            },
                            trailing: const Icon(Icons.add),
                        ),

                        ListTile(
                            leading: Icon(Icons.settings, color: Colors.grey[850],),
                            title: const Text('Setting'),
                            onTap: (){
                                print('Setting is clicked');
                            },
                            trailing: const Icon(Icons.add),
                        ),

                        ListTile(
                            leading: Icon(Icons.question_answer, color: Colors.grey[850],),
                            title: const Text('Q&A'),
                            onTap: (){
                                print('Q&A is clicked');
                            },
                            trailing: const Icon(Icons.add),
                        ),
                    ],
                ),
            ),
        );
    }
}