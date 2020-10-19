import 'package:flutter/material.dart';
import 'package:walkie_ver01/tracking_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //하단버튼 위젯 모양 설정
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.home), label:""),
    BottomNavigationBarItem(icon: Icon(Icons.people), label:""),
  ];

  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    Container(color: Colors.grey[400],),
    trackingScreen(),
    Container(color: Colors.grey[400],),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( //앱의 기본 구성
      appBar: AppBar(
        title: Text('Walkie'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      //하단 버튼 위젯
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: btmNavItems,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlueAccent,
        currentIndex: _selectedIndex,
        onTap: _onBtmItemClick,//버튼 클릭
      ),
    );
  }

  void _onBtmItemClick(int index){
    print(index);
    //extend state class 안에서만 사용가능한 함수
    setState(() {
      _selectedIndex = index;//값을 변화(모양 변화)
    });

  }
}
