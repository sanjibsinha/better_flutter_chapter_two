import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MaterialDesignThemeControl extends StatelessWidget {
  const MaterialDesignThemeControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: building custom theme that'll contrl color and text
    return MaterialApp(
      title: 'Material Design Theme Control',
      home: MaterialDesignCustomTheme(),
      theme: _customTheme(),
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData _customTheme() {
    final ThemeData base = ThemeData.light();
    return ThemeData(
      accentColor: Color(0xFF442B2D),
      primaryColor: Color(0xFFFEDBD0),
      buttonColor: Color(0xFFFEDBD0),
      scaffoldBackgroundColor: Colors.white,
      cardColor: Color(0xFF883B2D),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: Color(0xFFFEDBD0),
      ),
      errorColor: Colors.red,
      buttonTheme: ThemeData.light().buttonTheme.copyWith(
            buttonColor: Color(0xFFFEDBD0),
            colorScheme: ThemeData.light().colorScheme.copyWith(
                  secondary: Color(0xFF442B2D),
                ),
          ),
      buttonBarTheme: ThemeData.light().buttonBarTheme.copyWith(
            buttonTextTheme: ButtonTextTheme.accent,
          ),
      primaryIconTheme: ThemeData.light().primaryIconTheme.copyWith(
            color: Color(0xFF442B2D),
          ),
      textTheme: _customTextTheme(base.textTheme),
      primaryTextTheme: _customTextTheme(base.primaryTextTheme),
      accentTextTheme: _customTextTheme(base.accentTextTheme),
    );
  }

  TextTheme _customTextTheme(TextTheme base) {
    return base
        .copyWith(
          headline5: base.headline5!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 26.0,
          ),
          headline6: base.headline6!.copyWith(fontSize: 22.0),
          caption: base.caption!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
          ),
          bodyText1: base.bodyText1!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        )
        .apply(
          fontFamily: 'Trajan Pro',
          displayColor: Color(0xFF442B2D),
          bodyColor: Color(0xFF883B2D),
        );
  }
}

class MaterialDesignCustomTheme extends StatelessWidget {
  const MaterialDesignCustomTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Material Design Custom Theme',
          style: Theme.of(context).textTheme.caption,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: CustomPage(),
    );
  }
}

class CustomPage extends StatelessWidget {
  const CustomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              width: 5,
              color: Theme.of(context).accentColor,
            ),
          ),
          child: Text(
            'Material Design Custom Theme Page',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).cardColor,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(8),
          child: Card(
            elevation: 30,
            shadowColor: Theme.of(context).cardColor,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    obscureText: true,
                  ),
                  ButtonBar(
                    children: <Widget>[
                      TextButton(
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                            color: Theme.of(context).buttonColor,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                            color: Theme.of(context).buttonColor,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
