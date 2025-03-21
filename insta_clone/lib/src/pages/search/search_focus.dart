// ignore_for_file: sort_child_properties_last

import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:insta_clone/src/components/image_data.dart';
import 'package:insta_clone/src/controller/bottom_nav_controller.dart';

class SearchFocus extends StatefulWidget {
  const SearchFocus({Key? key}) : super(key: key);

  @override
  State<SearchFocus> createState() => _SearchFocus();
}

class _SearchFocus extends State<SearchFocus> with TickerProviderStateMixin{

    late TabController tabController;

    @override
    void initState(){
        super.initState();
        tabController = TabController(length: 5, vsync: this);
    }

    Widget _tabMenuOne(String menu){
        return Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(menu, style: TextStyle(fontSize: 15, color: Colors.black),),
        );
    }

    PreferredSizeWidget _tabMenu(){
        return PreferredSize(
            child: Container(
                width: Size.infinite.width,
                height: AppBar().preferredSize.height,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Color(0xffe4e4e4))
                    )
                ),

                child: TabBar(
                    controller: tabController,
                    indicatorColor: Colors.black,
                    tabs: [
                        _tabMenuOne('인기'),
                        _tabMenuOne('계정'),
                        _tabMenuOne('오디오'),
                        _tabMenuOne('태그'),
                        _tabMenuOne('장소'),
                    ],
                ),
            ),
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),     // 앱바 사이즈만큼 밑부터 시작
        );
    }

    Widget _body(){
        return TabBarView(
            controller: tabController,
            children: const [
                Center(child: Text('인기페이지')),
                Center(child: Text('계정페이지')),
                Center(child: Text('오디오페이지')),
                Center(child: Text('태그페이지')),
                Center(child: Text('장소페이지')),
            ],
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(

            appBar: AppBar(
                elevation: 0,
                leading: GestureDetector(
                    // onTap: Get.back,
                    onTap: BottomNavController.to.willPopAction,
                    child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ImageData(IconsPath.backBtnIcon),
                    ),
                ),
                
                titleSpacing: 0,
                title: Container(
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffefefef)
                    ),
                    child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '검색',
                            contentPadding: EdgeInsets.only(left: 15, top: 7, bottom: 7),
                            isDense: true
                        ),
                    ),
                ),

                bottom: _tabMenu()
            ),

            body: _body()
        );
    }
}