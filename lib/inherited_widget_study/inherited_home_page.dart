import 'package:flutter/material.dart';
import 'package:provider_study/inherited_widget_study/my_inherited_widget.dart';

class InheritedHomePage extends StatelessWidget {
  const InheritedHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterWidget =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();

    return Scaffold(
      appBar: AppBar(title: Text('InheritedWidget Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counterWidget?.count ?? 0}',
                style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterWidget?.increment,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
