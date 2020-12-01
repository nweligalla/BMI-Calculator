import 'package:flutter/material.dart';

class WeightHeightSelector extends StatelessWidget {
  final Function onChanged;
  final String unit;
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
          Text(unit),
          Slider(
            value: value,
            onChanged: onChanged,
            max: max,
            min: min,
            divisions: (max - min).toInt(),
          ),
          Row(
            children: [
              Text(value.toString()),
              Text(unit == "weight" ? "kg" : "cm"),
            ],
          )
        ],
      ),
    );
  }
}
