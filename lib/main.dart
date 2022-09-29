import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscan/pages/home_page.dart';
import 'package:qrscan/pages/map_page.dart';
import 'package:qrscan/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'map':  (_) => MapPage()
        },
        theme: ThemeData(
          primarySwatch: Colors.teal,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.teal
          )
        ),
      ),
    );
  }
}
