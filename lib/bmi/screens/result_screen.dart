import 'package:flutter/material.dart';
import 'package:flutter_application_statefulwedgit/core/colors.dart';

import '../widgets/button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result;

  String getStatus() {
    if (result < 18.5) {
      return "UNDER WEIGHT";
    } else if (result >= 18.5 && result < 25) {
      return "NORMAL";
    } else if (result >= 25 && result < 30) {
      return "OVER WEIGHT";
    } else if (result >= 30) {
      return "OBESE";
    } else {
      return "ERROR";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.arrow_back_ios, color: AppColor.whiteColor),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: AppColor.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            spacing: 30,
            children: [
              Center(
                child: Expanded(
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text(
                      'Your result',

                      style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 30,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                  color: AppColor.cardColor,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: Column(
                    spacing: 90,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${getStatus()}',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        result.toStringAsFixed(3),
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'lorem afkm onifanmm',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Button(
                text: 'ReCalculate',
                onPressd: () {
                  Navigator.pop(context);
                },
                bottomHight: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
