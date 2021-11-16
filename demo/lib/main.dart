import 'package:demo/categoryProvider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider<RecipeProvider>(
        //   create: (ctx) => RecipeProvider(),
        // ),
        ChangeNotifierProvider<CategoryProvider>(
          create: (ctx) => CategoryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Multi Provider Demo App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          // accentColor: Colors.blueGrey[300],
          fontFamily: 'Poppins',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
}

