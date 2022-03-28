import 'package:flutter/material.dart';
import 'package:restaurant/values.dart';
import 'package:restaurant/views/home.dart';

class NavMenuBar extends StatefulWidget
{
  int idx = 0;
  NavMenuBar({
    Key? key,
    required this.idx
  }) : super(key: key);

  @override
  State<NavMenuBar> createState()  {
    return NavBar(idx: idx);
  }
}

class NavBar extends State<NavMenuBar> {
  int idx = 0;

  NavBar({
    Key? key,
    required this.idx
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.table_chart),
          label: 'Mesas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fastfood),
          label: 'Platillos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Pedidos',
        ),
      ],
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      enableFeedback: true,
      backgroundColor: fusionRed,
      unselectedItemColor: Colors.white38,
      selectedItemColor: Colors.white,
      currentIndex: idx,
      onTap: (int index) {
        setState(() {
          idx = index;
        });

        if(idx == 0 )
        {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
        
      },
    );
  }
}