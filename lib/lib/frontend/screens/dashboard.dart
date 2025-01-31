import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jihusishe/lib/frontend/screens/countieslist.dart';
import 'package:jihusishe/lib/frontend/screens/policeofficers.dart';
import 'package:jihusishe/lib/frontend/screens/resources%20(1).dart';
import '../widgets/card_img.dart';


class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 226, 255),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            //Header
            Container(
              height: 94,
              width: Get.width,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(30),
                //     bottomRight: Radius.circular(30)),
                color: Color.fromRGBO(22, 29, 64, 1),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  IconButton(
                      onPressed: () {
                       Get.to(() =>CountiesList());
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                  SizedBox(width: Get.width * .25),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello Sheryl!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            CardImg(
              img: "images/report.jpg",
              title: "REPORT",
              subtitle: "Select your location to report incidences",
              onClick: () {
                Get.to(()=>CountiesList());
              },
            ),
            CardImg(
              img: "images/resource.jpg",
              title: "RESOURCES",
              subtitle:
                  "Participate in peace interventions through civic learning",
              onClick: () {
                Get.to(()=>Resources());

              },
            )
          ],
        ),
      ),
    );
  }
}
