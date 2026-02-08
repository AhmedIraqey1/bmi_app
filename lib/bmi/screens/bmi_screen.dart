import 'package:flutter/material.dart';
import 'package:flutter_application_statefulwedgit/bmi/screens/result_screen.dart';
import 'package:flutter_application_statefulwedgit/bmi/widgets/button.dart';
import 'package:flutter_application_statefulwedgit/bmi/widgets/gender_card.dart';
import 'package:flutter_application_statefulwedgit/bmi/widgets/height_ui.dart';
import '../../core/colors.dart';
import '../widgets/counter_card.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

int weight = 82;
int age = 42;
int height = 50;
bool maleSelected = true;

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        leading: const Icon(Icons.food_bank, color: AppColor.primaryColor),
        title: const Text(
          "BMIINDEX",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            children: [
              // male & female
              GenderSelction(),
              //height
              HeightUi(
                height: height,
                onChanged: (value) {
                  setState(() {
                    height = value.toInt();
                  });
                },
              ),
              //weight & age
              WeightAndAge(),
              //calculate buttom
              Button(
                text: 'Calculate',
                onPressd: () {
                  //BMI = weight /(height * height /10000)
                  double result = weight / (height*height /1000) ;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen(result: result,)),
                  );
                },
                bottomHight: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded WeightAndAge() {
    return Expanded(
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            child: CounterCard(
              title: "Weight",
              counter: weight,
              onAdd: () {
                setState(() {
                  weight++;
                });
              },
              onRemove: () {
                if (weight > 0) {
                  setState(() {
                    weight--;
                  });
                }
              },
            ),
          ),
          Expanded(
            child: CounterCard(
              title: "Age",
              counter: age,
              onAdd: () {
                setState(() {
                  age++;
                });
              },
              onRemove: () {
                if (age > 0) {
                  setState(() {
                    age--;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Expanded GenderSelction() {
    return Expanded(
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            child: GenderCard(
              icon: Icons.male,
              text: "Male",
              isSelected: maleSelected,
              onTap: () {
                setState(() {
                  maleSelected = true;
                });
              },
            ),
          ),
          Expanded(
            child: GenderCard(
              icon: Icons.female,
              text: "Woman",
              isSelected: !maleSelected,
              onTap: () {
                setState(() {
                  maleSelected = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
