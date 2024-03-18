import 'package:banao_flutter/bottombar.dart';
import 'package:banao_flutter/homepage/homepage.dart';
import 'package:banao_flutter/topmenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopMenu.topMenuItems(),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedItemColor: const Color(0xFF598BED),
            currentIndex: currentPageIndex,
            items: Bottombar.bottomBarItems(currentPageIndex)),
        body: <Widget>[
          HomePage.homepageList(),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
              ],
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
              ],
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have times:',
                ),
              ],
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
              ],
            ),
          ),
        ][currentPageIndex]);
  }
}
