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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 26, 224, 42)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My List'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
        centerTitle: true,
      ),
      body:OrientationBuilder(builder: (context,orientation){
        return GridView.count(
          shrinkWrap: true,
          childAspectRatio: 5,
          crossAxisCount: orientation== Orientation.portrait?1:2,
          children: List.generate(20, (index) {
            return Container(
              decoration: BoxDecoration(border:Border.all(color: Colors.black12,width: 2.0) ),
              alignment: Alignment.center,
              child: Text(
                'Number${index+1}',
              ),
            );
          }),
        );
      },)
      );
  }
}
