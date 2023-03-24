import 'package:flutter/material.dart';
import 'package:insta_clone/src/components/avatar_widget.dart';
import 'package:insta_clone/src/components/image_data.dart';
import 'package:insta_clone/src/components/post_widget.dart';

class Home extends StatelessWidget {
    const Home({Key? key}) : super(key: key);

    Widget _myStory(){
        return Stack(
            children: [
                AvatarWidget(
                    type: AvatarType.TYPE2, 
                    thumbPath: 'https://thumbs.dreamstime.com/b/cosmos-beauty-deep-space-elements-image-furnished-nasa-science-fiction-art-102581846.jpg',
                    size: 70,
                ),
                Positioned(
                    right: 5,
                    bottom: 0,
                    child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                            border: Border.all(
                                color: Colors.white,
                                width: 2
                            )
                        ),
                        child: const Center(
                            child: Text('+', 
                                style: TextStyle(fontSize: 20, color: Colors.white, height: 1.1),
                            ),
                        ),
                    ),
                )
            ],
        );
    }

    Widget _storyBoardList(){
        return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                    const SizedBox(width: 15,),
                    _myStory(),
                    const SizedBox(width: 5,),
                    ...List.generate(100, (index) => AvatarWidget(
                        type: AvatarType.TYPE1,
                        thumbPath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDvYYiAt_WjzQ5lueNSWMwHNjp7UV5mjBXOg&usqp=CAU',
                    )),
                ]
            ),
        );
    }

    Widget _postList(){
        return Column(
            children: List.generate(50, (index) => const PostWidget()).toList(),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                title: ImageData(IconsPath.logo, width: 270,),
                actions: [
                    GestureDetector(
                        onTap: (){},
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ImageData(IconsPath.directMessage, width: 50,),
                        ),
                    )
                ],
            ),

            body: ListView(
                children: [
                    _storyBoardList(), 
                    _postList()
                ],
            ),
        );
    }
}