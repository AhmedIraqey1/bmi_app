import 'package:flutter/material.dart';
import 'package:flutter_application_statefulwedgit/core/colors.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });
  final String text;
  final IconData icon;
  final Function() onTap;
  final bool isSelected;

  Color getColor() {
    if (isSelected) {
      return AppColor.primaryColor;
    } else {
      return AppColor.cardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: getColor(),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColor.whiteColor, size: 80),
            Text(
              '$text',
              style: TextStyle(
                color: AppColor.whiteColor,
                // fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
