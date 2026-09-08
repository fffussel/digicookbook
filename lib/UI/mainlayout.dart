import 'package:digicookbook/DataObjects/Setting/Settings.dart';
import 'package:digicookbook/UI/view/addbookview.dart';
import 'package:digicookbook/UI/view/addrecipeview.dart';
import 'package:digicookbook/UI/view/bookview.dart';
import 'package:digicookbook/UI/view/homeview.dart';
import 'package:digicookbook/UI/view/searchview.dart';
import 'package:digicookbook/UI/view/settingsview.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final Settings _settings = Settings();

  static const int _addIndex = 2;

  int _selectedIndex = 0;

  static const List<Widget> _views = [
    HomeView(),
    BookView(),
    SizedBox.shrink(),
    SettingsView(),
  ];

  void _onItemTapped(int index) {
    if (index == _addIndex) {
      _openAddMenu();
      return;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  void _openPage(Widget view) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: _settings.backgroundColor,
          appBar: AppBar(backgroundColor: _settings.secondaryColor),
          body: view,
        ),
      ),
    );
  }

  void _openSearch() => _openPage(const SearchView());

  Future<void> _openAddMenu() async {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final Size size = overlay.size;
    final double itemWidth = size.width / _views.length;

    final String? choice = await showMenu<String>(
      context: context,
      color: _settings.backgroundColor,
      position: RelativeRect.fromLTRB(
        itemWidth * _addIndex,
        size.height - kBottomNavigationBarHeight,
        itemWidth * (_views.length - _addIndex - 1),
        0,
      ),
      items: [
        PopupMenuItem<String>(
          value: 'recipe',
          child: Row(
            children: [
              Icon(Icons.receipt_long, color: _settings.textColor),
              const SizedBox(width: 12),
              Text('Add recipe',
                  style: TextStyle(color: _settings.textColor)),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'book',
          child: Row(
            children: [
              Icon(Icons.menu_book, color: _settings.textColor),
              const SizedBox(width: 12),
              Text('Add book',
                  style: TextStyle(color: _settings.textColor)),
            ],
          ),
        ),
      ],
    );

    if (!mounted) return;
    if (choice == 'recipe') {
      _openPage(const AddRecipeView());
    } else if (choice == 'book') {
      _openPage(const AddBookView());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _settings.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            _views[_selectedIndex],
            Positioned(
              top: 16,
              left: 16,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: _openSearch,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: _settings.highlightColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.search, color: _settings.backgroundColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: _settings.backgroundColor,
        selectedItemColor: _settings.highlightColor,
        unselectedItemColor: _settings.secondaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Books'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
