import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' show pow;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/output_widget.dart';

class OutputScreen extends StatelessWidget {
  static const pageRoute = '/outputScreen';
  @override
  Widget build(BuildContext context) {
    double bmi;
    String result;

    void updateUI(data) {
      var height = data["height"];
      var weight = data["weight"];
      bmi = (weight / pow(height / 100, 2));
      print(bmi);

      if (bmi <= 15) {
        result = "Very severely underweight";
      } else if (bmi > 15 && bmi <= 16) {
        result = "Severely underweight";
      } else if (bmi > 16 && bmi <= 18.5) {
        result = "Underweight";
      } else if (bmi > 16 && bmi <= 18.5) {
        result = "Underweight";
      } else if (bmi > 18.5 && bmi <= 25) {
        result = "Normal (healthy weight)";
      } else if (bmi > 25 && bmi <= 30) {
        result = "Overweight";
      } else if (bmi > 30 && bmi <= 35) {
        result = "Obese Class I (Moderately obese)";
      } else if (bmi > 35 && bmi <= 40) {
        result = "Obese Class II (Severely obese)";
      } else if (bmi > 40) {
        result = "Obese Class III (Very severely obese)	";
      } else {
        result = "error";
      }
    }

    var inputdata = ModalRoute.of(context).settings.arguments;
    updateUI(inputdata);

    //updateUI(inputdata);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            color: grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Result"),
      ),
      body: OutputWidget(
        bmi: bmi,
        result: result,
      ),
    );
  }
}
