import 'dart:io';

import 'package:digikala_demo/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkInternet();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colorz.backGround,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logos/splash.png'))),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(
                  color: Colorz.splashScreenText,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  checkInternet() async {
    if (await checkConnectionInternet()) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Home()));
    } else {
      return Alert(
          context: context,
          type: AlertType.error,
          title: "( خطا در اتصال به اینترنت )",
          desc: "از اتصال به اینترنت مطمئن شوید",
          style: const AlertStyle(
              alertElevation: 5.0,
              descStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
          buttons: [
            DialogButton(
                child: const Text(
                  'تلاش مجدد',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colorz.backGround),
                ),
                onPressed: () {
                  checkInternet();
                }),
            DialogButton(
                color: Colorz.exitAlert,
                child: const Text(
                  'خروج',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colorz.backGround),
                ),
                onPressed: () {
                  exit(0);
                }),
          ]).show();
    }
  }

  Future<bool> checkConnectionInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }
}
