import 'package:flutter/material.dart';
import 'package:flutter_application_statefulwedgit/core/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.onPressd,
    required this.bottomHight,
  });
  final String text;
  final VoidCallback onPressd;
  final double bottomHight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        minimumSize: Size(double.infinity, bottomHight),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),
      onPressed: onPressd,
      child: Text(
        '$text',
        style: TextStyle(
          color: AppColor.whiteColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
/* Expanded(
            child: 
          ),
          Expanded(
            child: CounterCard(title: "Woman",counter:50),
          ),*/