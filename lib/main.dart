import 'package:flutter/material.dart';
import 'package:provider_study/inherited_widget_study/inherited_home_page.dart';
import 'package:provider_study/inherited_widget_study/inherted_counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InheritedCounterProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
        ),
        home: InheritedHomePage(),
      ),
    );
  }
}
