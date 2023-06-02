import 'package:e_parking_mobile/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Riwayat"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(right: 8, left: 8, top: 15),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  width: double.infinity,
                  child: Column(
                    children: [
                      TextField(
                        controller: TextEditingController(text: "Hari ini"),
                        readOnly: true,
                        decoration: InputDecoration(
                          // label: Text(widget.label),
                          labelStyle: TextStyle(color: primaryColor),
                          hintStyle: TextStyle(color: primaryColor),
                          isDense: true,
                          focusColor: primaryColor,
                          label: Text("Pilih Tanggal"),
                          prefixIcon: Icon(
                            Icons.history,
                            size: 45,
                            color: primaryColor,
                          ),
                          suffixIcon: Icon(Icons.arrow_forward_ios),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          alignment: Alignment.center,
                          child: const Text(
                            "Cari",
                            style: TextStyle(
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(height: 10),
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
                        color: Color(0xffD5F5E3),
                        child: Container(
                          height: 75,
                          width: 50,
                          child: Icon(
                            Icons.check,
                            size: 35,
                            color: Color(0xff2ECC71),
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
                            "Jam Masuk: 2022-02-05 15:00",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Jam keluar: 2022-02-05 17:00",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
