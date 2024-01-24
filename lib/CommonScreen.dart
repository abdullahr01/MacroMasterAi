import 'package:flutter/material.dart';
import 'package:macromasterai/Screens/CartPage.dart';
import 'package:macromasterai/Screens/DetailsPage.dart';
import 'package:macromasterai/Screens/HomePage.dart';
import 'package:macromasterai/Screens/ProfilePage.dart';


class CommonScreenSelector extends StatefulWidget {
  const CommonScreenSelector({super.key});

  @override
  State<CommonScreenSelector> createState() => _CommonScreenSelectorState();
}

class _CommonScreenSelectorState extends State<CommonScreenSelector> {

  int index = 0;
  final screens = [
    const HomePage(),
    const Cart(),
    const Details(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.transparent,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)
            )
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => {
            setState(() {
              this.index = index;
            }),
          },
          height: 60,
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
                icon:  Icon(Icons.home, color: Colors.grey,),
                selectedIcon: Icon(Icons.home_outlined, color: Colors.red, size: 30,),
                label: 'Home'
            ),
            NavigationDestination(
                icon:  Icon(Icons.shopping_cart, color: Colors.grey,),
                selectedIcon: Icon(Icons.shopping_cart_outlined, color: Colors.red, size: 30,),
                label: 'Cart'
            ),
            NavigationDestination(
                icon:  Icon(Icons.dashboard, color: Colors.grey,),
                selectedIcon: Icon(Icons.dashboard_outlined, color: Colors.red, size: 30,),
                label: 'Details'
            ),
            NavigationDestination(
                icon:  Icon(Icons.person, color: Colors.grey,),
                selectedIcon: Icon(Icons.person_outline, color: Colors.red, size: 30,),
                label: 'Profile'
            ),

          ],
        ),
      ),
    );
  }
}