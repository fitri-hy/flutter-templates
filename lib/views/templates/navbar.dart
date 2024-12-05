import 'package:flutter/material.dart';
import '../../utils/navbar_state.dart';

class Navbar extends StatelessWidget {
  final Function(int) onItemTapped;

  const Navbar({Key? key, required this.onItemTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: NavbarState.selectedIndex,
      builder: (context, selectedIndex, child) {
        return BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            onItemTapped(index);
            NavbarState.selectedIndex.value = index;
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          backgroundColor: Color(0xFF212121),
          selectedItemColor: Color(0xFF06A5Ba),
          unselectedItemColor: Color(0xFFBFBFBF),
        );
      },
    );
  }
}
