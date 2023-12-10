import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabTapped;

  const MyBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: buildImage(
                'assets/images/menu.png',
                selectedIndex == 0,
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: buildImage(
                'assets/images/bottom_car.png',
                selectedIndex == 1,
              ),
              label: 'Profile',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: buildImage(
                'assets/images/notification.png',
                selectedIndex == 2,
              ),
              label: 'Pick',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: buildImage(
                'assets/images/setting.png',
                selectedIndex == 3,
              ),
              label: 'History',
              backgroundColor: Colors.white,
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: const  Color.fromARGB(255, 7, 121, 11),
          unselectedItemColor: Colors.black,
          onTap: onTabTapped,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedIconTheme: const IconThemeData(color: Colors.green),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
        ),
      ),
    );
  }

  Widget buildImage(String imagePath, bool isSelected) {
    return isSelected
        ? ColorFiltered(
            colorFilter: ColorFilter.mode(
              const  Color.fromARGB(255, 7, 121, 11),
              BlendMode.srcIn,
            ),
            child: Image.asset(
              imagePath,
              width: 30,
              height: 30,
            ),
          )
        : Image.asset(
            imagePath,
            width: 30,
            height: 30,
          );
  }
}
