
  import 'package:flutter/material.dart';

Padding section1() {
    return Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "To Misr Al Khair",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  child: Image.asset("asset/Iconly-Bulk-Notification.png"),
                )
              ],
            ),
          );
  }