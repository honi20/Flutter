import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Buttons',
            theme: ThemeData(primarySwatch: Colors.blue),
            home: const MyButtons(),
        );
    }
}

class MyButtons extends StatelessWidget {
    const MyButtons({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Buttons'),
                centerTitle: true,
            ),
            
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextButton(
                            onPressed: () {
                                print('Text button - short');
                            },

                            onLongPress: () {
                                print('Text button - long');
                            },

                            // ignore: sort_child_properties_last
                            child: const Text(
                                'Text button',
                                style: TextStyle(fontSize: 20.0),
                            ),

                            style: TextButton.styleFrom(
                                primary: Colors.red,
                            ),
                        ),

                        ElevatedButton(
                            onPressed: () {
                                print('Elevated button');
                            },
                            // ignore: sort_child_properties_last
                            child: const Text('Elevated button'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orangeAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                elevation: 0.0
                            ),
                        ),

                        OutlinedButton(
                            onPressed: () {
                                print('Outlined button');
                            },
                            // ignore: sort_child_properties_last
                            child: const Text('Outlined button'),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.green,
                                // side: BorderSide(
                                //     color: Colors.black87,
                                //     width: 2.0
                                // )
                            ),
                        ),

                        TextButton.icon(
                            onPressed: (){
                                print('Text Icon button');
                            }, 
                            icon: const Icon(
                                Icons.home,
                                size: 30.0,    
                                // color: Colors.black87,
                            ), 
                            label: const Text('Go to home'),
                            style: TextButton.styleFrom(
                                primary: Colors.purple,
                            ),
                        ),

                        ElevatedButton.icon(
                            onPressed: (){
                                print('Elevated Icon button');
                            }, 
                            icon: const Icon(
                                Icons.home,
                                size: 20.0,    
                            ), 
                            label: const Text('Go to home'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                minimumSize: Size(200, 50)
                            ),
                        ),

                        OutlinedButton.icon(
                            onPressed: (){
                                print('Outlined Icon button');
                            }, 
                            icon: const Icon(Icons.home), 
                            label: const Text('Go to home'),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.black,
                            ),
                        ),

                        ElevatedButton.icon(
                            onPressed: null,
                            icon: const Icon(
                                Icons.home,
                                size: 20.0,    
                            ), 
                            label: const Text('Go to home'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                onSurface: Colors.pink
                            ),
                        ),

                        ButtonBar(
                            alignment: MainAxisAlignment.center,
                            buttonPadding: const EdgeInsets.all(20),
                            children: [
                                TextButton(
                                    onPressed: (){}, 
                                    child: const Text('TextButton')
                                ),

                                ElevatedButton(
                                    onPressed: (){}, 
                                    child: const Text('ElevatedButton')
                                )
                            ],
                        )
                    ],
                ),
            ),
        );
    }
}
