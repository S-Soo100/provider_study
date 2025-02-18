import 'package:flutter/material.dart';
import 'package:provider_study/inherited_widget_study/my_inherited_widget.dart';

class InheritedCounterProvider extends StatefulWidget {
  final Widget child;

  const InheritedCounterProvider({Key? key, required this.child})
      : super(key: key);

  @override
  _CounterProviderState createState() => _CounterProviderState();
}

class _CounterProviderState extends State<InheritedCounterProvider> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      count: count,
      increment: increment,
      child: widget.child,
    );
  }
}
