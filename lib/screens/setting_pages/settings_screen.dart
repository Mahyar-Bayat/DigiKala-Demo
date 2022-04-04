import 'dart:ui';

import 'package:digikala_demo/Constants/Constants.dart';
import 'package:digikala_demo/home.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        'تنضیمات',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colorz.blackIcon,
                          size: 25,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.question_mark,
                          size: 25,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'پرسش های متداول',
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_left))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colorz.border.withOpacity(0.4))),
                    ),
                    width: MediaQuery.of(context).size.width - 50,
                    height: 2,
                  ),
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.privacy_tip_outlined,
                              size: 25,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'حریم خصوصی',
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_left))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colorz.border.withOpacity(0.4))),
                        ),
                        width: MediaQuery.of(context).size.width - 50,
                        height: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.assignment_outlined,
                              size: 25,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'شرایط استفاده',
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_left))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colorz.border.withOpacity(0.4))),
                        ),
                        width: MediaQuery.of(context).size.width - 50,
                        height: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.call_outlined,
                              size: 25,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'تماس با ما',
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_left))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colorz.border.withOpacity(0.4))),
                        ),
                        width: MediaQuery.of(context).size.width - 50,
                        height: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.bug_report_outlined,
                              size: 25,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'گزارش خطا',
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_left))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colorz.border.withOpacity(0.4))),
                        ),
                        width: MediaQuery.of(context).size.width - 50,
                        height: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star_border,
                              size: 25,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'امتیاز به دیجی کالا',
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_left))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colorz.border.withOpacity(0.4))),
                        ),
                        width: MediaQuery.of(context).size.width - 50,
                        height: 2,
                      ),
                    ),
              ])),
        ),
      ),
    ));
  }
}
