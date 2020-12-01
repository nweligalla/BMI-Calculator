import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../widgets/gender_button.dart';
import '../widgets/weight_height_selector.dart';
import '../widgets/calculate_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './output_screen.dart';

class InputScreen extends StatefulWidget {
  static const pageRoute = '/inputScreen';
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double weight = 65;
  double height = 120;
  bool isMale = true;

  void selectbutton() {
    setState(() {
      isMale = !isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Gender section
          Container(
            child: Column(
              children: [
                Text("Gender", style: kTitleTextStyle),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GenderButton(
                      icon: FontAwesomeIcons.mars,
                      isSelected: isMale,
                      onTap: selectbutton,
                    ),
                    GenderButton(
                      icon: FontAwesomeIcons.venus,
                      isSelected: !isMale,
                      onTap: selectbutton,
                    )
                  ],
                )
              ],
            ),
          ),
          // weight height section
          Container(
            margin:
                EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 8),
            child: Column(
              children: [
                WeightHeightSelector(
                  max: 140,
                  min: 20,
                  onChanged: (val) {
                    setState(() {
                      weight = val;
                    });
                  },
                  unit: Unit.weight,
                  value: weight,
                ),
                SizedBox(height: 30),
                WeightHeightSelector(
                  max: 170,
                  min: 30,
                  onChanged: (val) {
                    setState(() {
                      height = val;
                    });
                  },
                  unit: Unit.height,
                  value: height,
                )
              ],
            ),
          ),
          //button section
          CalculateButton(() {
            Navigator.pushNamed(context, OutputScreen.pageRoute, arguments: {
              "isMale": isMale,
              "weight": weight,
              "height": height
            });
          })
        ],
      ),
    );
  }
}
