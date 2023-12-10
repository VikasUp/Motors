import 'package:flutter/material.dart';
import 'package:saudi_cars/presentation/cars_checkout/widgets/bottom_navigation_widget.dart';
import 'package:saudi_cars/presentation/cars_checkout/widgets/date_widget.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';
import 'package:intl/intl.dart'; // Import the DateFormat class

class CheckoutScreen extends StatefulWidget {
  final ImageModel selectedCar;
  const CheckoutScreen({Key? key, required this.selectedCar}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  late DateTime fromDate;
  late DateTime toDate;

  DateTime? selectedFromDate;
  DateTime? selectedToDate;

  @override
  void initState() {
    super.initState();
    fromDate = DateTime.now();
    toDate = fromDate.add(const Duration(days: 7));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 7, 121, 11),
      ),
      backgroundColor: const Color.fromARGB(255, 234, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 2,
              child: Stack(
                children: [
                  Container(
                    height: size.height / 3,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 7, 121, 11),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(1, 10),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: DateWidget(selectedCar: widget.selectedCar),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 0.5,
              indent: 16,
              endIndent: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    child: Text(
                      'Trip Dates',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 1,
                        vertical: 1,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildDatePicker(
                                'From',
                                'assets/images/calendar.png',
                                context,
                                selectedFromDate),
                            Container(
                              width: 0.5,
                              height: 80,
                              color: Colors.grey,
                            ),
                            buildDatePicker(
                                'To',
                                'assets/images/to_calendar.png',
                                context,
                                selectedFromDate),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Pickup & Return',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 25,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 7, 121, 11),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Location',
                                          style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationWidget(selectedCar: widget.selectedCar),
    );
  }

  Widget buildDatePicker(String label, String imagePath, BuildContext context,
      DateTime? selectedDate) {
    final dateFormat = DateFormat('yyyy-MM-dd');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 121, 11),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: GestureDetector(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  setState(() {
                    if (label == 'From') {
                      selectedFromDate = pickedDate;
                    } else if (label == 'To') {
                      selectedToDate = pickedDate;
                    }
                  });
                }
              },
              child: Image.asset(
                imagePath,
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            if (selectedDate != null)
              Text(
                '${dateFormat.format(selectedDate)}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
