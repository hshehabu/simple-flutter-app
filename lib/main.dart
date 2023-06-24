import 'package:flutter/material.dart';
import 'package:simple_flutter_app/profile_page.dart';
import 'home_page.dart';

final darkTheme = ThemeData.dark();
final lightTheme = ThemeData.light();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? darkTheme : lightTheme,
      home: RootPage(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;
  const RootPage(
      {Key? key, required this.isDarkMode, required this.toggleTheme})
      : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  List<Widget> pages = [const HomePage(), const ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Current mode: ${widget.isDarkMode ? 'Dark' : 'Light'}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: widget.toggleTheme,
        child: Icon(widget.isDarkMode ? Icons.dark_mode : Icons.lightbulb),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
