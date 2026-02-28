import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final double width;

  const FilterButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.width = 80,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
            child: Container(
              padding: EdgeInsets.all(5),
              width: width,
              height: 30,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          )
        : GestureDetector(
            onTap: onTap,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          );
  }
}
