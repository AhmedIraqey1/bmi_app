import 'package:flutter/material.dart';
import 'package:flutter_application_statefulwedgit/core/colors.dart';

class HeightUi extends StatelessWidget {
  const HeightUi({super.key, required this.height, required this.onChanged});
  final int height;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.cardColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Height',
              style: TextStyle(color: AppColor.whiteColor, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '$height',
                  style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'cm',
                  style: TextStyle(color: AppColor.whiteColor, fontSize: 18),
                ),
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: 0,
              max: 200,
              activeColor: AppColor.primaryColor,
              inactiveColor: Colors.grey,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
