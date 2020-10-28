import 'package:flutter/material.dart';

class ConditionalContent extends StatelessWidget {
  final bool conditional;
  final Function falsyBuilder;
  final Function truthyBuilder;

  ConditionalContent({
    @required this.conditional,
    @required this.truthyBuilder,
    this.falsyBuilder,
  })  : assert(conditional != null),
        assert(truthyBuilder != null);

  @override
  Widget build(BuildContext context) => conditional
      ? truthyBuilder()
      : falsyBuilder != null ? falsyBuilder() : Container(width: 0, height: 0);
}