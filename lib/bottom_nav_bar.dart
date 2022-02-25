import 'package:flutter/material.dart';
import 'package:milkiyat/screens/explore.dart';
import 'package:milkiyat/screens/home.dart';
import 'package:milkiyat/screens/notification.dart';
import 'package:milkiyat/screens/saved.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
   int _selectedIndex = 0;
     static const List<Widget> screens = [
       Home(),
       Explore(),
       Saved(),
       Notifications(),
      
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       
bottomNavigationBar: SizedBox(height: 75,
  child:   Container(
    decoration:const BoxDecoration(
      color: Colors.white,
      // borderRadius:const BorderRadius.only(
      //   topLeft: Radius.circular(40),
      //   topRight: Radius.circular(40),
      // ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0,0),
          blurRadius: 3,
          color: Colors.orange
        )
      ]
    ),
    child: BottomNavigationBar(
    
              items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                    icon: Icon(Icons.home,),
                    title: Text('Home'),
                    backgroundColor: Colors.white
                    ),
                      BottomNavigationBarItem(
                     icon: Icon(Icons.explore_outlined,),
                     title: Text('Explore'),
                     backgroundColor: Colors.white
                     ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.favorite,),
                        title: Text('Saved'),
                        backgroundColor: Colors.white
                        ),
                      BottomNavigationBarItem(
                      icon: Icon(Icons.notifications,),
                      title: Text('Notification'),
                      backgroundColor: Colors.white,
                        ),
                        ],
    
              type: BottomNavigationBarType.shifting,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.orange,iconSize:25,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
              elevation: 50),
  ),
),
       body: Container(
            color: Colors.grey[300],
            child: Center(
              child: screens.elementAt(_selectedIndex),
            ),
          ),
     
    );
  }
}

