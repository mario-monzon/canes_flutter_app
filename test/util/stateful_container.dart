import 'package:flutter/material.dart';

class StatefulContainer extends StatefulWidget {
  const StatefulContainer({@required this.child});

  final Widget child;

  @override
  _StatefulContainerState createState() => _StatefulContainerState();
}

class _StatefulContainerState extends State<StatefulContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }
}
