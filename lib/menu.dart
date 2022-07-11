import 'package:basic_flutter/test2.dart';
import 'package:basic_flutter/test3.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => MenuState();
}

class MenuState extends State<Menu> {
  int selectedIndex = 0;
  List<Widget> listwidget = <Widget>[
    const Test02(),
    const Test03(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  BottomNavigationBarItem bottomNavigationBarItem(){
    return const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'หน้าแรก',
      backgroundColor: Colors.blue,
      );
  }

  BottomNavigationBarItem bottomNavigationBarItem2(){
    return const BottomNavigationBarItem(
      icon: Icon(Icons.swipe),
      label: 'หน้าสอง',
      backgroundColor: Colors.red,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listwidget.elementAt(selectedIndex),
      bottomNavigationBar: showbottom(),
    );
  }
  BottomNavigationBar showbottom(){
    return BottomNavigationBar(
      items: [
        bottomNavigationBarItem(),
        bottomNavigationBarItem2(), 
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Color.fromARGB(255, 255, 0, 0),
      onTap: _onItemTapped,
      );
  }
}
