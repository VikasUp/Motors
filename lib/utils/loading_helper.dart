import 'package:flutter/material.dart';

class LoaderHelper {
  static void showLoader(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  static void hideLoader(BuildContext context) {
    Navigator.pop(context);
  }
}