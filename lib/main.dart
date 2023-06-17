import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const RootPage(),

    );
  }
}
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter'
        ),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          debugPrint('floating button is being pressed');
        });
      },
      child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'profile'),

      ],
      onDestinationSelected: (int index){
        setState(() {
          currentPage = index;
        });

      },
        selectedIndex: currentPage,
      ),
    );
  }
}




