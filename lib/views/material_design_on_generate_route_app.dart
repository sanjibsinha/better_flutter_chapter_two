import 'package:flutter/material.dart';

class MaterialDesignOnGenerateRouteApp extends StatelessWidget {
  const MaterialDesignOnGenerateRouteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Design: A part of Essential Widget',
      // ignore: todo
      // TODO: make the home property as the backyeard
      home: MDFirstPage(),
      // ignore: todo
      // TODO: make a dynamic initial route
      initialRoute: '/second',
      // ignore: todo
      // TODO: onGenerateRoute should not return null
      onGenerateRoute: _goToSecondPage,
    );
  }

  Route<dynamic>? _goToSecondPage(RouteSettings settings) {
    if (settings.name != '/second') {
      return null;
    }

    return MaterialPageRoute(
      builder: (context) => MDSecondPage(),
      settings: settings,
      fullscreenDialog: true,
    );
  }
}

class MDFirstPage extends StatelessWidget {
  const MDFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                width: 8,
                color: Colors.lightBlueAccent,
              ),
            ),
            child: Text(
              'First Page',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MDSecondPage extends StatelessWidget {
  const MDSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: SecondPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              width: 8,
              color: Colors.lightBlueAccent,
            ),
          ),
          child: Text(
            'Second Page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
