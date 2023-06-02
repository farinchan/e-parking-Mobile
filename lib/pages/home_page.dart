import 'package:e_parking_mobile/color.dart';
import 'package:e_parking_mobile/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: blackColor),
                    ),
                    Text(
                      "Fajri Rinaldi Chan",
                      style: TextStyle(fontSize: 18, color: blackColor),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    context.goNamed("notification");
                  },
                  icon: Icon(Icons.notifications),
                  iconSize: 30,
                )
              ],
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                Image.asset("assets/images/ilustrasi2.png"),
                Positioned(
                  top: 20,
                  left: 30,
                  child: Column(
                    children: [
                      Text(
                        "Saldo",
                        style: TextStyle(
                            fontSize: 26,
                            color: whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "RP. 80.000",
                        style: TextStyle(fontSize: 20, color: whiteColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Feature",
              style: TextStyle(
                  fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            context.goNamed("topup");
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Color(0xffE8DAEF),
                            child: Container(
                              height: 75,
                              width: double.infinity,
                              child: Icon(
                                Icons.currency_exchange,
                                size: 35,
                                color: Color(0xff8E44AD),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Top up",
                          style: TextStyle(
                              fontSize: 16,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => context.goNamed("history"),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Color(0xffD5F5E3),
                            child: Container(
                              height: 75,
                              width: double.infinity,
                              child: Icon(
                                Icons.history_outlined,
                                size: 35,
                                color: Color(0xff2ECC71),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Riwayat",
                          style: TextStyle(
                              fontSize: 16,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => context.goNamed("informasi"),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Color(0xffFADBD8),
                            child: Container(
                              height: 75,
                              width: double.infinity,
                              child: Icon(
                                Icons.info_outline,
                                size: 35,
                                color: Color(0xffE74C3C),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Informasi",
                          style: TextStyle(
                              fontSize: 16,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "Tracking Parkir",
              style: TextStyle(
                  fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xffECF0F1),
              child: Container(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xffFDEBD0),
                        child: Container(
                          height: 75,
                          width: 50,
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 35,
                            color: Color(0xffF39C12),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "B1",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: blackColor),
                          ),
                          Text(
                            "Jam Masuk: 2022-02-06 13:30",
                            style: TextStyle(fontSize: 14, color: blackColor),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            // Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   color: Color(0xffECF0F1),
            //   child: Container(
            //       height: 90,
            //       width: double.infinity,
            //       child: Row(
            //         children: [
            //           Card(
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(10.0),
            //             ),
            //             color: Color(0xffFDEBD0),
            //             child: Container(
            //               height: 75,
            //               width: 50,
            //               child: Icon(
            //                 Icons.cancel,
            //                 size: 35,
            //                 color: Color(0xffF39C12),
            //               ),
            //             ),
            //           ),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text(
            //                 "Anda Belum melakukan Parkir",
            //                 style: TextStyle(fontSize: 14, color: blackColor),
            //               ),
            //             ],
            //           )
            //         ],
            //       )),
            // ),
          ],
        ),
      )),
    );
  }
}
