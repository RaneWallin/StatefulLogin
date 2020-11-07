import 'package:flutter/material.dart';

/// Creates space between widgets in a list
class Margin extends StatelessWidget {
  final double top;
  final double bottom;
  final double left;
  final double right;

  /// Sets all margins to a default value or passed value
  Margin({this.top: 0.0, this.bottom: 0.0, this.left: 0.0, this.right: 0.0});

  /// Sets margins on all sides to a single value
  Margin.all(double margin)
      : this(top: margin, bottom: margin, left: margin, right: margin);

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: top, bottom: bottom, left: left, right: right));
  } // build
} // Margin
