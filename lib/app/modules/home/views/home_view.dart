import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:misr/app/modules/home/views/widget/section1.dart';
import 'package:misr/app/modules/home/views/widget/section2.dart';
import '../controllers/home_controller.dart';

class CategoryItem {
  String image;
  String title;
  CategoryItem({
    required this.image,
    required this.title,
  });
}

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<CategoryItem> categoryItems = [
      CategoryItem(
        title: "Education",
        image: "asset/open-book.png",
      ),
      CategoryItem(
        title: "Life",
        image: "asset/statistic.png",
      ),
      CategoryItem(
        title: "Growth",
        image: "asset/sun.png",
      )
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: SingleChildScrollView(
          child: Column(
            children: [
              section1(),
              section2(
                categoryItems: categoryItems,
              ),
              section3(),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Container(
                  width: 255,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            color: Colors.grey,
                            width: Get.width,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset("asset/Image 2.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Humanity Cases",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("ipsum as it is sometimes known, is dummy text "),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.label,
                                      color: Color(0xffE79E39),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("85.00")
                                  ],
                                ),
                                Row(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      color: Color(0xff008066).withOpacity(.5),
                                      child: Icon(
                                        Icons.shop_2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: Color(0xff008066).withOpacity(.5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shop_2,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Donate",
                                              style: TextStyle(color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.share),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              imageBox(
                image: "asset/slider001.png",
                title: "Our Branches",
              ),
              SizedBox(
                height: 10,
              ),
              imageBox(
                image: "asset/map.png",
                title: "Who we Are",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBox({
    required String title,
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Image.asset(image)
        ],
      ),
    );
  }

  SingleChildScrollView section3() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("asset/slider001.png"),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("asset/slider001.png"),
            ),
          ),
        ],
      ),
    );
  }
}
