import 'package:flutter/material.dart';
import 'package:saudi_cars/presentation/cars_checkout/screen/checkout_cars.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';



class BottomWidget extends StatefulWidget {
  final ImageModel selectedCar;
  const BottomWidget({super.key, required this.selectedCar});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}



class _BottomWidgetState extends State<BottomWidget> {
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Finance Button Pressed'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey,
              onPrimary: Colors.white,
              side: const BorderSide(color: Colors.green),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text('Finance'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        CheckoutScreen(selectedCar: widget.selectedCar)),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 15, 110, 19),
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}
