import 'package:digikala_demo/Constants/Constants.dart';
import 'package:flutter/material.dart';
import '../account/login_page.dart';
import '../setting_pages/settings_screen.dart';

class MyDigikalaScreen extends StatefulWidget {
  const MyDigikalaScreen({Key? key}) : super(key: key);

  @override
  _MyDigikalaScreenState createState() => _MyDigikalaScreenState();
}

class _MyDigikalaScreenState extends State<MyDigikalaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colorz.backGround,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SettingsScreen()));
                          },
                          icon: const Icon(
                            Icons.settings_outlined,
                            color: Colorz.blackIcon,
                            size: 30,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_none_outlined,
                            color: Colorz.blackIcon,
                            size: 30,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'برای کار با این صفحه ، ابتدا به ',
                        style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const LoginPage()));
                        },
                        child: const Text(
                          'حساب کاربری ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colorz.blueText,
                              fontSize: 18),
                        ),
                      ),
                      const Text(
                        'خود وارد شوید',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
