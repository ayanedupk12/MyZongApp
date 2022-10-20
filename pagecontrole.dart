
import 'package:doctor/HomePage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class PageControl extends StatefulWidget {
  const PageControl({Key? key}) : super(key: key);

  @override
  State<PageControl> createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  @override
  var currentindex=0;
  List pages = [
    HomePage(),
    Container(color: Colors.red,width: double.infinity,height: double.infinity,),
    Container(color: Colors.green,width: double.infinity,height: double.infinity,),
    Container(color: Colors.grey,width: double.infinity,height: double.infinity,),
    Container(color: Colors.blue,width: double.infinity,height: double.infinity,),
    Container(color: Colors.yellow,width: double.infinity,height: double.infinity,),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentindex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (i)=> setState((){
          currentindex = i;
        }),
        items: [
          SalomonBottomBarItem(icon: Icon(Icons.home), title: Text('Home')),
          SalomonBottomBarItem(icon: Icon(Icons.data_usage), title: Text('Usage')),
          SalomonBottomBarItem(icon: Icon(Icons.gif_box), title: Text('Bundels')),
          SalomonBottomBarItem(icon: Icon(Icons.add_box_sharp), title: Text('Latest')),
          SalomonBottomBarItem(icon: Icon(Icons.games_outlined), title: Text('More')),
        ],
      ),
      body: pages[currentindex],
    );
  }
}
