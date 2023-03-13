import 'package:flutter/material.dart';
import 'package:misr/app/modules/home/views/widget/category_item.dart';

SingleChildScrollView section2() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        categoryItem(
          image: "asset/open-book.png",
          title: "Education",
        ),
        categoryItem(
          image: "asset/statistic.png",
          title: "Life",
        ),
        categoryItem(
          image: "asset/open-book.png",
          title: "Education",
        ),
        categoryItem(
          image: "asset/statistic.png",
          title: "Life",
        ),
        categoryItem(
          image: "asset/open-book.png",
          title: "Education",
        ),
        categoryItem(
          image: "asset/statistic.png",
          title: "Life",
        ),
      ],
    ),
  );
}
