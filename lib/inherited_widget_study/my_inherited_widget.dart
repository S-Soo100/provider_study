import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final int count;
  final VoidCallback increment;

  const MyInheritedWidget({
    Key? key,
    required this.count,
    required this.increment,
    required Widget child,
  }) : super(key: key, child: child);

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.count != count; // count가 변경되면 rebuild
  }
}
