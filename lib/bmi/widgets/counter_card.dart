import 'package:flutter/material.dart';
import 'package:flutter_application_statefulwedgit/core/colors.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({
    super.key,
    required this.title,
    required this.counter,
    required this.onAdd,
    required this.onRemove,
  });
  final String title;
  final int counter;
  final Function() onAdd;
  final Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.cardColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$title',
              style: TextStyle(
                color: AppColor.whiteColor,
                // fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    minimumSize: Size(double.minPositive, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  onPressed: () {
                    onAdd();
                  },
                  child: Icon(Icons.add, color: AppColor.whiteColor),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(91, 158, 158, 158),
                    minimumSize: Size(double.minPositive, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  onPressed: () {
                    onRemove();
                  },
                  child: Icon(Icons.remove, color: AppColor.whiteColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
