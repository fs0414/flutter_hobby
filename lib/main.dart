import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter_hobby',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        initialRoute: '/',
        // home: const HomePage(title: 'Flutter hobby home'),
        routes: {
          '/': (context) => const HomeScreen(title: 'Flutter hobby home'),
          '/second': (context) => const ListARenderScreen(),
        });
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _showDiolog() {
    context:
    context;
    builder:
    (BuildContext context) {
      return const AlertDialog(
        title: Text('flutter popup'),
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('you have pushed the button this many times'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
                child: const Text('to second page'),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                })
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16.0),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.bathtub_outlined),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class ListARenderScreen extends StatelessWidget {
  const ListARenderScreen({super.key});
  // final String title = 'flutter page second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter page second'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('second page'),
          TextButton(
            child: const Text('home'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
