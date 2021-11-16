import 'package:demo/categoryProvider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  bool _isLoading = false;
  @override
  void initState() {
    setState(() {
      _isLoading = true;
    });
    Provider.of<CategoryProvider>(context, listen: false)
        .fetchAndSetCategories()
        .then((_) {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Consumer<CategoryProvider>(
            builder: (context, categoryData, _) => Container(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryData.categories.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  // child: CategoryListItem(
                  //   categoryId: categoryData.categories[index].id,
                  //   colorA: categoryData.categories[index].colorA,
                  //   colorB: categoryData.categories[index].colorB,
                  //   iconImageUrl: categoryData.categories[index].iconImageUrl,
                  //   title: categoryData.categories[index].title,
                  // ),
                ),
              ),
            ),
          );
  }
}
