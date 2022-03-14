import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  // final List<Widget> _screen = [
  //   CategoriesScreen(),
  //   FavoriteScreen(),
  // ];
  final List<Map<String, Object>> _screen = [
    {
      'title': 'Lista de Categorias',
      'screen': CategoriesScreen(),
    },
    {
      'title': 'Meus Favoritos',
      'screen': FavoriteScreen(),
    }
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screen[_selectedScreenIndex].cast()['title'],
        ),
      ),
      drawer: MainDrawer(),
      body: _screen[_selectedScreenIndex].cast()['screen'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedScreenIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Categorias',
              icon: Icon(
                Icons.category,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favoritos',
              icon: Icon(
                Icons.star,
              ),
            ),
          ]),
    );
  }
}
