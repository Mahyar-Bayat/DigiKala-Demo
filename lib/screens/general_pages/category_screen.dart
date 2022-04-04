import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../Constants/Constants.dart';

/*
*   This is every thing in Cart page
*     include :
*       1.Search Tab
*       2.CarouselSlider
* */

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final CarouselController _controller = CarouselController();

  late String searchInPut;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
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
                          hintText: "مثال: متن",
                          label: Text('جستجو در دیجی کالا')),
                    )),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'کالای دیجیتال',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colorz.normalText),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: GestureDetector(
                              child: const Text(
                                'مشاهده همه',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colorz.blueText),
                              ),
                              onTap: () {
                                print('see All 1');
                              })),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CarouselSlider(
                        carouselController: _controller,
                        items: [
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  image: AssetImage('assets/goods/01.jpg'),
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
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/02.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/01.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    width: 300,
                                    image: AssetImage('assets/goods/02.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/01.jpg')),
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
                                    image: AssetImage('assets/goods/02.jpg')),
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                            autoPlay: false,
                            enableInfiniteScroll: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            //aspectRatio: 1 / 1.4,
                            viewportFraction: 0.4,
                            reverse: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            pageSnapping: false)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10, top: 15),
                        child: Text(
                          'خودرو، ابزار و تجهیزات صنعتی',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colorz.normalText),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: GestureDetector(
                              child: const Text(
                                'مشاهده همه',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colorz.blueText),
                              ),
                              onTap: () {
                                print('see All 1');
                              })),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CarouselSlider(
                        carouselController: _controller,
                        items: [
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  image: AssetImage('assets/goods/03.jpg'),
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
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/04.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/03.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    width: 300,
                                    image: AssetImage('assets/goods/04.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/03.jpg')),
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
                                    image: AssetImage('assets/goods/04.jpg')),
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                            autoPlay: false,
                            enableInfiniteScroll: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            //aspectRatio: 1 / 1.4,
                            viewportFraction: 0.4,
                            reverse: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            pageSnapping: false)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10, top: 15),
                        child: Text(
                          'مد و پوشاک',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colorz.normalText),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: GestureDetector(
                              child: const Text(
                                'مشاهده همه',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colorz.blueText),
                              ),
                              onTap: () {
                                print('see All 1');
                              })),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CarouselSlider(
                        carouselController: _controller,
                        items: [
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                  fit: BoxFit.cover,
                                  height: 250,
                                  image: AssetImage('assets/goods/05.jpg'),
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
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/06.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/05.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    width: 300,
                                    image: AssetImage('assets/goods/06.jpg')),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
                              child: const Center(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 250,
                                    image: AssetImage('assets/goods/05.jpg')),
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
                                    image: AssetImage('assets/goods/06.jpg')),
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                            autoPlay: false,
                            enableInfiniteScroll: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            //aspectRatio: 1 / 1.4,
                            viewportFraction: 0.4,
                            reverse: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            pageSnapping: false)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 10, top: 15),
                        child: Text(
                          'اسباب بازی، کودک و نوزاد',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colorz.normalText),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: GestureDetector(
                              child: const Text(
                                'مشاهده همه',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colorz.blueText),
                              ),
                              onTap: () {
                                print('see All 1');
                              })),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CarouselSlider(
                        carouselController: _controller,
                        items: [
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colorz.homeIcons,
                              ),
                              width: 150,
                              height: 200,
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
                              width: 150,
                              height: 200,
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
                              width: 150,
                              height: 200,
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
                              width: 150,
                              height: 200,
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
                              width: 150,
                              height: 200,
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
                            autoPlay: false,
                            enableInfiniteScroll: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: false,
                            //aspectRatio: 1 / 1.4,
                            viewportFraction: 0.4,
                            reverse: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            pageSnapping: false)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
