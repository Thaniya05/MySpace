import 'package:fastworkdemo/src/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "MySpace",
      home: const MainPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff1C4B5F),
        cardColor: Color.fromARGB(255, 63, 113, 134),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff1C4B5F),
        ),
        tabBarTheme: TabBarTheme(
          unselectedLabelColor: Color.fromARGB(255, 213, 213, 213),
          indicatorColor: Colors.amber,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color(0xff53f6aa),
          ),
          labelMedium: TextStyle(
            color: Color(0xff53f6aa),
          ),
        ),
      ),
    );
    /*
    return MaterialApp(
      title: "Myspace",
      home: MyHomePage(
        title: "test",
      ),
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.amber),
        ),
      ),
    );*/
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        shadowColor: Color(0xff1C4B5F),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
