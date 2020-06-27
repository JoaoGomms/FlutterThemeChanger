import 'package:changethemeprovider/src/utils/theme_changer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeWidget extends StatefulWidget {
  ThemeWidget({Key key}) : super(key: key);

  @override
  _ThemeWidgetState createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {
    ChangeTheme _changeTheme = Provider.of<ChangeTheme>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('Temas'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                      child: Text('Tema Escuro', style: TextStyle(fontSize: 36),),
                      onPressed: () => _changeTheme.setTheme(ThemeData.dark())),
                  FlatButton(
                      child: Text('Tema Claro', style: TextStyle(fontSize: 36),),
                      onPressed: () => _changeTheme.setTheme(ThemeData.light())),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}