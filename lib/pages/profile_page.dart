import 'package:e_parking_mobile/color.dart';
import 'package:e_parking_mobile/provider/login_provider.dart';
import 'package:e_parking_mobile/provider/profile_provider.dart';
import 'package:e_parking_mobile/provider/saldo_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Consumer<ProfileProvider>(
                builder: (context, state, child) {
                  return Column(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        state.nama!,
                                        style: TextStyle(
                                            fontSize: 20, color: whiteColor),
                                      ),
                                      Text(
                                        Provider.of<SaldoProvider>(context)
                                            .saldoSisa
                                            .toString(),
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
                        subtitle: Text(state.uid!),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          size: 35,
                          color: primaryColor,
                        ),
                        title: Text('Email'),
                        subtitle: Text(state.email!),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.phone,
                          size: 35,
                          color: primaryColor,
                        ),
                        title: Text('Phone'),
                        subtitle: Text(state.phone!),
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
                            isFinished:
                                Provider.of<LoginProvider>(context).logoutState,
                            onWaitingProcess: () {
                              Future.delayed(Duration(seconds: 2), () {
                                Provider.of<LoginProvider>(context,
                                        listen: false)
                                    .logout();
                              });
                            },
                            onFinish: () async {
                              final SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.remove('token');
                              context.goNamed("intro");
                              Provider.of<LoginProvider>(context, listen: false)
                                  .logout();
                            },
                          ),
                        ),
                      )
                    ],
                  );
                },
              ))),
    );
  }
}
