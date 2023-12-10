import 'package:flutter/material.dart';
import 'package:saudi_cars/presentation/dash_board_page/widgets/bottom_navigation.dart';
import 'package:saudi_cars/presentation/dash_board_page/widgets/new_cars_widget.dart';

class ImageModel {
  final String imageUrl;

  ImageModel({
    required this.imageUrl,
  });
}

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<ImageModel> imageList = [
    ImageModel(
      imageUrl: 'assets/images/bentley.png',
    ),
    ImageModel(
      imageUrl: 'assets/images/bmw.png',
    ),
    ImageModel(
      imageUrl: 'assets/images/gmc.png',
    ),
    ImageModel(
      imageUrl: 'assets/images/ford.png',
    ),
  ];

  List<ImageModel> newCarsList = [
    ImageModel(
      imageUrl: 'assets/images/bmw_card.png', 
    ),
    ImageModel(
      imageUrl: 'assets/images/mercides_classic.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/drawer.png',
            width: 30,
            height: 30,
          ),
          onPressed: () {},
        ),
        backgroundColor: const Color.fromARGB(255, 234, 232, 232),
      ),
      backgroundColor: const Color.fromARGB(255, 234, 232, 232),
      drawer: const Drawer(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        children: [
          const SizedBox(height: 20),
          const Text(
            "Let's find your favorite car\nhere!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Color.fromARGB(255, 5, 79, 7)),
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Find Your Car",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Trending Brands",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              'View All',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final imageModel = imageList[index];
                    return Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              imageModel.imageUrl,
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Cars',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 500, child: NewCarsList(newCarsList: newCarsList))
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTabTapped: _onItemTapped,
      ),
    );
  }
}
