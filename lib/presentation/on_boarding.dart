import 'package:flutter/material.dart';
import 'package:saudi_cars/data/model/on_board.dart';
import 'package:saudi_cars/routing/app_routes.dart';

final List<OnBoard> demoData = [
  OnBoard(
    image: "assets/images/on_boarding_4.png",
    logo: "assets/images/logo.png",
    title: "Lets Start A New\nExperience",
    description: "Choose Your Favourite Car,Rent It And\nEnjoy New Experience",
  ),
  OnBoard(
    image: "assets/images/on_boarding_2 .png",
    logo: "assets/images/logo.png",
    title: "Lets Start A New\nExperience",
    description: "Choose Your Favourite Car,Rent It And\nEnjoy New Experience",
  ),
  OnBoard(
    image: "assets/images/on_boarding_5.png",
    logo: "assets/images/logo.png",
    title: "Lets Start A New\nExperience",
    description: "Choose Your Favourite Car,Rent It And\nEnjoy New Experience",
  ),
];

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
             alignment: Alignment.bottomCenter,
          children: [ 
            Expanded(  
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: demoData.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnBoardContent(
                  title: demoData[index].title,
                  description: demoData[index].description,
                  image: demoData[index].image,
                ),
              ),
            ),
            if (_pageIndex != 0)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Indicator(
                      length: demoData.length,
                      currentIndex: _pageIndex,
                    ),
                  ],
                ),
              ),
            if (_pageIndex == 0)
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                     
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 67, 157, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Let's Start",
                      style: TextStyle(
                        fontFamily: "HappyMonkey",
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            else
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                     Navigator.pushNamed(
                                        context, AppRoutes.dashBoard);
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 67, 157, 70),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontFamily: "HappyMonkey",
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Container(
        
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          padding: const EdgeInsets.all(45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                description,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  final int length;
  final int currentIndex;
  final double spacing;
  final Color activeColor;
  final Color inactiveColor;

  const Indicator({
    required this.length,
    required this.currentIndex,
    this.spacing = 5.0,
    this.activeColor = Colors.transparent,
    this.inactiveColor = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0, 
      left: 16.0, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(length, (index) {
          final isActive = currentIndex == index;
          return Container(
            width: 40,
            height: 10,
            margin: EdgeInsets.symmetric(horizontal: spacing),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: isActive ? activeColor : inactiveColor,
              border: Border.all(color: Colors.white),
            ),
          );
        }),
      ),
    );
  }
}
