import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery/detiles.dart';
import 'package:delivery/donate_order.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  int _PageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Hello , Rahma',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Have A Nice Day',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/pp.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _PageIndex = index;
                      });
                    },
                    height: 200,
                    //aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(
                    controller: PageController(initialPage: _PageIndex),
                    count: 5,
                    effect: const ScrollingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                    onDotClicked: (index) {}),
                ButtonsTabBar(
                  // Customize the appearance and behavior of the tab bar
                  backgroundColor: const Color.fromARGB(255, 6, 115, 204),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  borderWidth: 2,
                  borderColor: Colors.black,
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  // Add your tabs here
                  tabs: const [
                    Tab(
                      text: 'To Deliver',
                    ),
                    Tab(
                      text: 'Delived',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'ORDER567900',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(223, 0, 93, 169),
                                    ),
                                  ),
                                  ListTile(
                                   
                                    title: const Text(
                                      'Albert',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.call_rounded),
                                        color: const Color.fromARGB(
                                            255, 41, 133, 45)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.location_on_outlined),
                                    title: Text(
                                      '150th Street, Near Cascade restaurant ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                              builder: (context) =>
                                                  const DetilesView(),
                                            ));
                                          },
                                          child: const Text('Show Detiles'))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: 5,
                      ),
                      ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'ORDER567900',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(223, 0, 93, 169),
                                    ),
                                  ),
                                  ListTile(
                                    
                                    title: const Text(
                                      'Albert',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.call_rounded),
                                        color: const Color.fromARGB(
                                            255, 41, 133, 45)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const ListTile(
                                    leading: Icon(Icons.location_on_outlined),
                                    title: Text(
                                      '150th Street, Near Cascade restaurant ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                              builder: (context) =>
                                                  const DonateOrder(),
                                            ));
                                          },
                                          child: const Text('Show Detiles'))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
