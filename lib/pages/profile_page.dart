import 'package:e_parking_mobile/color.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            Stack(
              children: [
                Image.asset("assets/images/ilustrasi3.png"),
                Positioned.fill(
                  left: 30,
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/user.png",
                          width: 50,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Fajri Rinaldi Chan",
                              style: TextStyle(fontSize: 20, color: whiteColor),
                            ),
                            Text(
                              "Rp. 80.000",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(
                Icons.tag,
                size: 35,
                color: primaryColor,
              ),
              title: Text('UID'),
              subtitle: Text('ec352f39'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                size: 35,
                color: primaryColor,
              ),
              title: Text('Email'),
              subtitle: Text('Fajri@gariskode.com'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                size: 35,
                color: primaryColor,
              ),
              title: Text('Phone'),
              subtitle: Text('089613390766'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(
                Icons.remove_red_eye,
                size: 35,
                color: primaryColor,
              ),
              title: Text('password'),
              subtitle: Text('********'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: SwipeableButtonView(
                  buttonText: 'SLIDE  TO LOGOUT',
                  buttonWidget: Container(
                    child: Icon(
                      Icons.logout,
                      color: Colors.grey,
                    ),
                  ),
                  activeColor: Color(0xFF009C41),
                  isFinished: false,
                  onWaitingProcess: () {
                    Future.delayed(Duration(seconds: 2), () {});
                  },
                  onFinish: () async {},
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
