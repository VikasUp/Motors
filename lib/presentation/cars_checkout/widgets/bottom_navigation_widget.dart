import 'package:flutter/material.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';
import 'package:saudi_cars/presentation/finance_screen/screen/finance_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  final ImageModel selectedCar;
  const BottomNavigationWidget({
    super.key,
    required this.selectedCar,
  });
  @override
  State<BottomNavigationWidget> createState() => _BottomWidgetState();
}


class _BottomWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            '\$8100 /Day',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const FinanceScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const  Color.fromARGB(255, 7, 121, 11),
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text('Checkout'),
          ),
        ],
      ),
    );
  }
}
