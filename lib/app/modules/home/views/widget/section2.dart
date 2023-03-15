import 'package:flutter/material.dart';
import 'package:misr/app/modules/home/views/home_view.dart';
import 'package:misr/app/modules/home/views/widget/category_item.dart';

SingleChildScrollView section2({required List<CategoryItem> categoryItems}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(categoryItems.length, (index) {
        return categoryItem(
          image: categoryItems.elementAt(index).image,
          title: categoryItems.elementAt(index).title,
        );
      }),
    ),
  );
}
