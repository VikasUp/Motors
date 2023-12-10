import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';

class DateWidget extends StatefulWidget {
  final ImageModel selectedCar;

  const DateWidget({Key? key, required this.selectedCar}) : super(key: key);

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  late DateTime fromDate;
  late DateTime toDate;
  late DateTime pickupDate;
  late DateTime returnDate;

  @override
  void initState() {
    super.initState();
    fromDate = DateTime.now();
    toDate = DateTime.now();
    pickupDate = DateTime.now();
    returnDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(image: AssetImage(widget.selectedCar.imageUrl)),
        Positioned(
          bottom: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'MERCEDES CLASSIC',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        '4.7',
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
              const SizedBox(height: 10),
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
                  const SizedBox(width: 1),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 1),
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
                  const SizedBox(width: 1),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 1),
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
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
