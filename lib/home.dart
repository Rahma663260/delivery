
import 'package:delivery/news_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List <Widget> screens =[
    const NewsView(),
    const NewsView(),
    const NewsView(),
    const NewsView(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens [currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 6, 115, 204),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
           BottomNavigationBarItem(icon:Icon(Icons.search_outlined),label:'Search' ),
            BottomNavigationBarItem(icon:Icon(Icons.notifications),label: 'Notifications'),
             BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Profile'),
        ]
        ),
    );
  }
}