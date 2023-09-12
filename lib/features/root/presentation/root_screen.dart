import 'package:flutter/material.dart';

// Root is used to support of nested navigation
class RootScreen extends StatelessWidget {
  final Widget child;

  const RootScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
