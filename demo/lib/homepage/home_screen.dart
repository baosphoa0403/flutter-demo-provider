import 'package:flutter/material.dart';

// import '../widgets/recipe_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Recipes'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // CategoryList(),
          SizedBox(height: 20),
          // RecipeList(),
        ],
      ),
    );
  }
}
