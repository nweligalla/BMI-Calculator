import 'package:flutter/material.dart';
import '../components/constants.dart';

class CalculateButton extends StatelessWidget {
  final Function onTap;
  CalculateButton(this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 40),
          child: Text(
            "Calculate",
            style: kCalculateBtntextStyle,
          ),
        ),
      ),
    );
  }
}
