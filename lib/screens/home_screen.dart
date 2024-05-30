import 'package:flutter/material.dart';
import 'package:template_app/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex;
  late final List<String> titles;
  late final PageController _pageController;

  @override
  void initState() {
    _currentIndex = 0;
    _pageController = PageController();
    titles = ['Modeling', 'Lazy Loading', 'Cached'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          titles[_currentIndex],
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: screens.length,
        itemBuilder: (context, index) => screens[index],
        onPageChanged: (index) => setState(() => _currentIndex = index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _itemsBottomNavigationBar,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() {
          _currentIndex = index;
          _pageController.jumpToPage(index);
        }),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

const List<BottomNavigationBarItem> _itemsBottomNavigationBar = [
  BottomNavigationBarItem(
    label: "Modeling",
    icon: Icon(Icons.location_city_rounded),
  ),
  BottomNavigationBarItem(
    label: "Lazy Loading",
    icon: Icon(Icons.downloading_rounded),
  ),
  BottomNavigationBarItem(
    label: "Cached",
    icon: Icon(Icons.people_alt_outlined),
  ),
];
