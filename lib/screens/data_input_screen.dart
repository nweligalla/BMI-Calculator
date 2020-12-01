import 'package:flutter/material.dart';
import '../widgets/gender_button.dart';
import '../widgets/weight_height_selector.dart';
import '../widgets/calculate_button.dart';

class DataInputScreen extends StatefulWidget {
  static const pageRoute = '/dataInputScreen';
  @override
  _DataInputScreenState createState() => _DataInputScreenState();
}

class _DataInputScreenState extends State<DataInputScreen> {
  double weight = 65;
  double height = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Text("Gender"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenderButton(
                isSelected: true,
                isMale: true,
                onTap: () {},
              ),
              GenderButton(
                isSelected: false,
                isMale: false,
                onTap: () {},
              )
            ],
          ),
          WeightHeightSelector(
            max: 140,
            min: 20,
            onChanged: (val) {
              setState(() {
                weight = val;
              });
            },
            unit: "weight",
            value: weight,
          ),
          WeightHeightSelector(
            max: 170,
            min: 30,
            onChanged: (val) {
              setState(() {
                height = val;
              });
            },
            unit: "height",
            value: height,
          ),
          CalculateButton(() {})
        ],
      ),
    );
  }
}
