import 'package:flutter/material.dart';

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
            Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Text("Calculate"),
        ),
      ),
    );
  }
}
