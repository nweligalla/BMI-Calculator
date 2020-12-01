import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final bool isSelected;
  final Function onTap;
  final IconData icon;
  GenderButton({
    @required this.isSelected,
    @required this.onTap,
    @required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isSelected ? null : onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Theme.of(context).accentColor : Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(35),
          ),
          color: isSelected
              ? Theme.of(context).accentColor
              : Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 45,
          ),
          child: Icon(
            icon,
            size: 47,
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}
