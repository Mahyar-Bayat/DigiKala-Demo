import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:digikala_demo/Constants/Constants.dart';
import 'package:digikala_demo/screens/general_pages/category_screen.dart';
import 'package:digikala_demo/screens/general_pages/cart_screen.dart';
import 'package:digikala_demo/screens/general_pages/home_screen.dart';
import 'package:digikala_demo/screens/general_pages/my_digikala_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  int pageIndex = 0;
  final HomeScreen _homeScreen = const HomeScreen();
  final CategoryScreen _categoryScreen = const CategoryScreen();
  final CartScreen _cartScreen = const CartScreen();
  final MyDigikalaScreen _digikalaScreen = const MyDigikalaScreen();

  Widget _showPage = const HomeScreen();

  _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homeScreen;
      case 1:
        return _categoryScreen;
      case 2:
        return _cartScreen;
      case 3:
        return _digikalaScreen;
    }
  }

  Future<bool?> showWarning(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text(
              'آیا مطمعن هستید؟',
              textDirection: TextDirection.rtl,
            ),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('خیر'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('بله'),
              ),
            ],
          ));

  /*Alert(
            context: context,
            type: AlertType.error,
            title: "( آیا مطمعن هستید؟؟؟ )",
            desc: "آیا میخواهید از برنامه خارج شوید؟؟؟",
            style: const AlertStyle(
                alertElevation: 5.0,
                descStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
            buttons: [
              DialogButton(
                  child: const Text(
                    'خیر',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colorz.backGround),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  }),
              DialogButton(
                  color: Colorz.exitAlert,
                  child: const Text(
                    'بله',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colorz.backGround),
                  ),
                  onPressed: () {
                    exit(0);
                  }),
            ]).show()?? false;*/

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showWarning(context);
        return shouldPop ?? false;
      },
      child: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            /*appBar: AppBar(
              elevation: 10,
              centerTitle: true,
              title: const Text(
                "REIT",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
            ),*/
            extendBody: true,
            bottomNavigationBar: CurvedNavigationBar(
              color: Colorz.bottomNavigationBarBackGround,
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: Colorz.bottomNavigationBar,
              index: pageIndex,
              animationDuration: const Duration(milliseconds: 350),
              items: const [
                Icon(
                  Icons.home_outlined,
                  color: Colorz.bottomNavigationBarIcon,
                ),
                Icon(
                  Icons.category_outlined,
                  color: Colorz.bottomNavigationBarIcon,
                ),
                Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colorz.bottomNavigationBarIcon,
                ),
                Icon(
                  Icons.account_circle_outlined,
                  color: Colorz.bottomNavigationBarIcon,
                )
              ],
              onTap: (int tapped) {
                setState(() {
                  _showPage = _pageChooser(tapped);
                });
              },
            ),
            body: _showPage,
          ),
        ),
      ),
    );
  }
}

/*width: MediaQuery.of(context).size.width*/
