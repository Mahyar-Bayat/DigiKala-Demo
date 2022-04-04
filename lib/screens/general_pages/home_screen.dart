import 'package:carousel_slider/carousel_slider.dart';
import 'package:digikala_demo/Constants/Constants.dart';
import 'package:flutter/material.dart';

/*
*   This is every thing in home page
*     include :
*       1.Search Tab
*       2.CarouselSlider
*       3.Buttons
* */

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();

  late String searchInPut;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colorz.appBar,
          title: Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colorz.searchBackGround,
                      borderRadius: BorderRadius.circular(50),
                      border: const Border(
                        bottom: BorderSide(width: 1, color: Colorz.border),
                        top: BorderSide(width: 1, color: Colorz.border),
                        left: BorderSide(width: 1, color: Colorz.border),
                        right: BorderSide(width: 1, color: Colorz.border),
                      )),
                  child: TextFormField(
                    onChanged: (value) {
                      searchInPut = value;
                      //number = input.split(".");
                    },
                    textDirection: TextDirection.ltr,
                    decoration: const InputDecoration(
                        hintText: "مثال: متن", label: Text('جستجو در دیجی کالا')),
                  )),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider(
                    carouselController: _controller,
                    items: [
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorz.homeIcons,
                          ),
                          width: 300,
                          child: const Center(
                            child: Image(
                              fit: BoxFit.cover,
                              height: 250,
                              image: AssetImage('assets/images/1.jpg'),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorz.homeIcons,
                          ),
                          width: 300,
                          child: const Center(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 250,
                                image: AssetImage('assets/images/2.jpg')),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorz.homeIcons,
                          ),
                          width: 300,
                          child: const Center(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 250,
                                image: AssetImage('assets/images/3.jpg')),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorz.homeIcons,
                          ),
                          width: 300,
                          child: const Center(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 250,
                                width: 300,
                                image: AssetImage('assets/images/4.jpg')),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorz.homeIcons,
                          ),
                          width: 300,
                          child: const Center(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 250,
                                image: AssetImage('assets/images/5.jpg')),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorz.homeIcons,
                          ),
                          width: 300,
                          child: const Center(
                            child: Image(
                                fit: BoxFit.cover,
                                height: 250,
                                image: AssetImage('assets/images/6.jpg')),
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        //aspectRatio: 1 / 1.4,
                        viewportFraction: 0.7,
                        reverse: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        pageSnapping: true)),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'دیجی کالا مهر',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colorz.backGround),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'دیجی پی',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colorz.backGround),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'دیجی استایل',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colorz.backGround),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'دیجی کالا جت',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colorz.backGround),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'دیجی کلاب',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colorz.backGround),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'دیجی پلاس',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colorz.backGround),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'ماموریت ها',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colorz.backGround),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colorz.bottomNavigationBar,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Icon(Icons.more_horiz , color: Colorz.icon,),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CarouselSlider(
                      carouselController: _controller,
                      items: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colorz.homeIcons,
                            ),
                            width: 300,
                            child: const Center(
                              child: Image(
                                fit: BoxFit.cover,
                                height: 250,
                                image: AssetImage('assets/images/1.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colorz.homeIcons,
                            ),
                            width: 300,
                            child: const Center(
                              child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  image: AssetImage('assets/images/2.jpg')),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colorz.homeIcons,
                            ),
                            width: 300,
                            child: const Center(
                              child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  image: AssetImage('assets/images/3.jpg')),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colorz.homeIcons,
                            ),
                            width: 300,
                            child: const Center(
                              child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  width: 300,
                                  image: AssetImage('assets/images/4.jpg')),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colorz.homeIcons,
                            ),
                            width: 300,
                            child: const Center(
                              child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  image: AssetImage('assets/images/5.jpg')),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colorz.homeIcons,
                            ),
                            width: 300,
                            child: const Center(
                              child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  image: AssetImage('assets/images/6.jpg')),
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          aspectRatio: 1 / 1.4,
                          viewportFraction: 0.7,
                          reverse: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          pageSnapping: true)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
