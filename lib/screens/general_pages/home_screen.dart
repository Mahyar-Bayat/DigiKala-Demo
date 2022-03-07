import 'package:carousel_slider/carousel_slider.dart';
import 'package:digikala_demo/Constants/Constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colorz.appBar,
          title: TextFormField(),
        ),
        body: Padding(
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
                          borderRadius: BorderRadius.circular(15),
                          color: Colorz.splashScreenText,
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
                          color: Colors.orange,
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
                          color: Colors.orange,
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
                          color: Colors.orange,
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
                          color: Colors.orange,
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
                          color: Colors.orange,
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
                      autoPlayInterval: const Duration(seconds: 1),
                      pageSnapping: true))
            ],
          ),
        ),
      ),
    );
  }
}
