import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/constants.dart';

class OutputWidget extends StatelessWidget {
  final double bmi;
  final String result;

  OutputWidget({
    this.bmi,
    this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 12),
          child: Column(
            children: [
              Text(
                bmi.toStringAsFixed(1),
                style: kBMItextStyle,
              ),
              Text(
                result,
                style: kResultTextStyle,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Icon(
                FontAwesomeIcons.weight,
                size: 100,
                color: Theme.of(context).accentColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
