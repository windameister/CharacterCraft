import 'package:flutter/material.dart';

class LabeledBorderContainer extends StatelessWidget {
  final String label;
  final Widget child;
  final Color borderColor;

  const LabeledBorderContainer({
    super.key,
    required this.label,
    required this.child,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10), // Make space for the label
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
        Positioned(
          top: 0,
          left: 30,
          child: Container(
            color: Colors
                .white, // To ensure the label has a background that matches the main container
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(label),
          ),
        ),
      ],
    );
  }
}
