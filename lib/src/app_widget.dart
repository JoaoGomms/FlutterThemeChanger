import 'package:changethemeprovider/src/pages/theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:changethemeprovider/src/utils/theme_changer.dart';
import 'package:device_preview/device_preview.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangeTheme>(
      create: (_) => ChangeTheme(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}


class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ChangeTheme>(context);
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: ThemeWidget(),
      theme: theme.getTheme(),
    );
  }
}