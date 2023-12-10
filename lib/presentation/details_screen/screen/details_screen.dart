import 'package:flutter/material.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';
import 'package:saudi_cars/presentation/details_screen/widgets/bottom_widget.dart';
import 'package:saudi_cars/presentation/details_screen/widgets/scrollable_widget.dart';

class DetailsScreen extends StatefulWidget {
  final ImageModel selectedCar;
  const DetailsScreen({super.key, required this.selectedCar, });
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}


class _DetailsScreenState extends State<DetailsScreen> {
  bool showFullText = false;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return 
      Scaffold(
        appBar: AppBar(
          title: const Text("Detail"),
          backgroundColor: const Color.fromARGB(255, 251, 249, 249
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/share.png',
                width: size.width * 0.1,
                height: size.height * 0.1,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Sharing...'),
                   ),
                 );
               },
             ),
          ],
        ),
        body: ScrollableWidget(selectedCar: widget.selectedCar),
        bottomNavigationBar: BottomWidget(selectedCar: widget.selectedCar),
      );  
  }
}


class PageIndicator extends StatelessWidget {
  final PageController controller;
  final int itemCount;
  final Color color;
  final Color activeColor;
  final double space;
  const PageIndicator({super.key, 
    required this.controller,
    required this.itemCount,
    this.color = Colors.green,
    this.activeColor = Colors.green,
    this.space = 8.0,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(itemCount, (index) {
          bool isCurrentPage = index == controller.page;
          return Container(
            width: isCurrentPage ? 16.0 : 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(horizontal: space / 2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isCurrentPage ? activeColor : color,
            ),
          );
        }),
      ),
    );
  }
}
