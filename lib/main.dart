import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartoon3D',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Nuclear Cartoon3D'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _resetCount() {
    _counter = 0;
    setState(() {
      _counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
            ElevatedButton(
              onPressed: _resetCount, 
              child: const Text("abc"),
              onFocusChange: (value) => "$value",)
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 246, 231, 231),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(227, 225, 225, 239),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.shopping_cart),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
