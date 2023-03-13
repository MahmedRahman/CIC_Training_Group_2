import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:misr/app/modules/home/views/widget/section1.dart';
import 'package:misr/app/modules/home/views/widget/section2.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Column(
          children: [
            section1(),
            section2(),
            
          ],
        ),
      ),
    );
  }
}
