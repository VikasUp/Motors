import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';



class ScrollableWidget extends StatefulWidget {
  final ImageModel selectedCar;
  const ScrollableWidget({super.key, required this.selectedCar});
  @override
  State<ScrollableWidget> createState() => _ScrollableWidgetState();
}



class _ScrollableWidgetState extends State<ScrollableWidget> {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _pageIndexNotifier = ValueNotifier<int>(0);
  bool showFullText = false;
  bool isFavorite = false;
  double rotation = 0.0;



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
            SizedBox(
                  height: size.height * 0.4,
                  child: PhotoViewGallery.builder(
                    itemCount: 5,
                    pageController: _pageController,
                    onPageChanged: (index) {
                      _pageIndexNotifier.value = index;
                    },
                    builder: (context, index) {
                      return PhotoViewGalleryPageOptions(
                        imageProvider: AssetImage(widget.selectedCar.imageUrl),
                      );
                    },
                    scrollPhysics: const BouncingScrollPhysics(),
                    backgroundDecoration: const BoxDecoration(),
                  ),
                ),
             Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'BMW X5M',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                         Container(
                             decoration: BoxDecoration(
                             color: const Color.fromARGB(255, 7, 121, 11),
                             borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text('4.7',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Excellent (188 Reviews)',
                              style: TextStyle(
                              color: Colors.black38,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CirclePageIndicator(
                  size: 8.0,
                  selectedSize: 10.0,
                  dotColor: Colors.grey,
                  selectedDotColor: const Color.fromARGB(255, 7, 121, 11),
                  itemCount: 5,
                  currentPageNotifier: _pageIndexNotifier,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                padding: const EdgeInsets.all(5.0),
                child: const Text(
                  'Overview',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(7.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
              style: const TextStyle(
              fontSize: 15,
                    ),
              maxLines: showFullText ? null : 2,
              overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8.0),
                  TextButton(
              onPressed: () {
                      setState(() {
              showFullText = !showFullText;
                      });
                    },
              child: Text(
              showFullText ? 'Read Less' : 'Read More',
              style: const TextStyle(
              color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/car_seat.png',
                            width: size.width * 0.1,
                            height: size.width * 0.1,
                          ),
                          const Text(
                            '5 Seats',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/lighting.png',
                            width: size.width * 0.1,
                            height: size.width * 0.1,
                          ),
                          const Text(
                            '510 Hp',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/speedometer.png',
                            width: size.width * 0.1,
                            height: size.width * 0.1,
                          ),
                          const Text(
                            '200 Km/H',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/gear-box.png',
                            width: size.width * 0.1,
                            height: size.width * 0.1,
                          ),
                          const Text(
                            'Auto',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/bags.png',
                            width: size.width * 0.1,
                            height: size.width * 0.1,
                          ),
                          const Text(
                            '2 Bags',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: const Text(
                        'Renter',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(width: 8),
                      const Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Jason Smith',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/images/massege.png',
                                width: 30,
                                height: 30,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Image.asset(
                                'assets/images/telephone.png',
                                width: 30,
                                height: 30,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 0.5,
                  indent: 16,
                  endIndent: 16,
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: RichText(
                text: const TextSpan(
                  text: 'Price: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '\$37,800',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 7, 121, 11),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
