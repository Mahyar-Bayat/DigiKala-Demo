import 'package:digikala_demo/screens/account/login_page.dart';
import 'package:flutter/material.dart';
import '../../Constants/Constants.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  late String input_username;
  late String input_password;

  @override
  Widget build(BuildContext context) {
    var page = MediaQuery.of(context).size;

    return SafeArea(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: <Color>[Color(0xff2c5364), Color(0xff0f2027)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Opacity(
                        opacity: 0.3,
                        child: Container(
                          width: page.width,
                          height: page.height,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/login/1.jpg"),
                                  repeat: ImageRepeat.repeat)),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Center(
                              child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 15),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: const Border(
                                        bottom: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        top: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        left: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        right: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                      )),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      input_username = value;
                                      //number = input.split(".");
                                    },
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colorz.backGround,
                                        hintText: "????????: ??????",
                                        label: Center(child: Text('?????? ????????????'))),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Center(
                              child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 15),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: const Border(
                                        bottom: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        top: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        left: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        right: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                      )),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      input_password = value;
                                      //number = input.split(".");
                                    },
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colorz.backGround,
                                        label: Center(child: Text('??????????'))),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Center(
                              child: Container(
                                  margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: const Border(
                                        bottom: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        top: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        left: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        right: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                      )),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      input_password = value;
                                      //number = input.split(".");
                                    },
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colorz.backGround,
                                        label: Center(child: Text('?????????? ??????????'))),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Center(
                              child: Container(
                                  margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: const Border(
                                        bottom: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        top: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        left: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        right: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                      )),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      input_password = value;
                                      //number = input.split(".");
                                    },
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colorz.backGround,
                                        label: Center(child: Text('???? ??????'))),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Center(
                              child: Container(
                                  margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: const Border(
                                        bottom: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        top: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        left: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        right: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                      )),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      input_password = value;
                                      //number = input.split(".");
                                    },
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colorz.backGround,
                                        label: Center(child: Text('???????? ??????????'))),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Center(
                              child: Container(
                                  margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: const Border(
                                        bottom: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        top: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        left: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                        right: BorderSide(
                                            width: 0.5, color: Colorz.border),
                                      )),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      input_password = value;
                                      //number = input.split(".");
                                    },
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colorz.backGround,
                                        label: Center(child: Text('????????'))),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: GestureDetector(
                              onTap: () {
                                print('signin');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colorz.bottomNavigationBar),
                                width: MediaQuery.of(context).size.width - 175,
                                height: 50,
                                child: const Center(
                                    child: Text(
                                  "?????? ??????",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colorz.text,
                                      fontSize: 18),
                                )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25,bottom: 250),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '?????? ???????? ???????????? ?????????? ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15, color: Colorz.text),
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
                                    '?????????? ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colorz.blueText,
                                        fontSize: 18),
                                  ),
                                ),
                                const Text(
                                  '???????? ????????',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15, color: Colorz.text),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
