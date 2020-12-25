import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  /* final when defined and we cannot change
  it again

  FINAL vs. CONST

  Immutability == uncheability
  Mutability == changeability

  Immutability widget cannot be change - if
  widget must be changed (color for example)
  must be created new widget.

  Final means that is only set once

  Const value cannot be reasign with new value;
  Can be set only once
  Final value cannot be reasign with new value;
  Can be set only once

  When is something created after code is compiled
  cannot be set to const, but only to final.
  If can be (for example) calculated with fix
  value when program is build (clicked run button)

  */

  /* variable must be destroyed when new widget
  will be created - thats we must add final*/
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
