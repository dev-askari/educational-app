import 'package:educational_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BottomCustomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> selectedIndex;

  const BottomCustomNavBar({Key? key, required this.currentIndex, required this.selectedIndex,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: BottomNavigationBar(
        elevation: 0,
        iconSize: 20,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedIndex(index);
        },
        backgroundColor: CustomAppColor.kBottomNavBarColor,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:  [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset("assets/icons/home.png", width: 25.0, height: 25.0,),
          ),
          BottomNavigationBarItem(
            label: 'Lesson',
            icon: Image.asset("assets/icons/notes.png", width: 25.0, height: 25.0,),

          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Image.asset("assets/icons/Vector.png", width: 25.0, height: 25.0,),

          ),

        ],
      ),
    );
  }
}
