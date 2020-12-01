import 'package:flutter/material.dart';
import '../components/constants.dart';

enum Unit {
  height,
  weight,
}

class WeightHeightSelector extends StatelessWidget {
  final Function onChanged;
  final Unit unit;
  final double min;
  final double max;
  final double value;
  WeightHeightSelector({
    @required this.max,
    @required this.min,
    @required this.onChanged,
    @required this.unit,
    @required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            unit == Unit.height ? "height" : "weight",
            style: kTitleTextStyle,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: grey,
              inactiveTrackColor: grey,
              overlayColor: Theme.of(context).accentColor,
              thumbColor: Theme.of(context).accentColor,
            ),
            child: Slider(
              value: value,
              onChanged: onChanged,
              max: max,
              min: min,
              divisions: ((max - min) * 100).toInt(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value.toStringAsFixed(2),
                style: kValueTextStyle,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                unit == Unit.weight ? "kg" : "cm",
                style: kValueTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
