import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderButton extends StatelessWidget {
  final bool isSelected;
  final bool isMale;
  final Function onTap;
  GenderButton({
    @required this.isSelected,
    @required this.isMale,
    @required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Theme.of(context).accentColor : Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(45),
          ),
          color: isSelected
              ? Theme.of(context).accentColor
              : Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 35,
          ),
          child: Icon(
            isMale ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            size: 37,
          ),
        ),
      ),
    );
  }
}
