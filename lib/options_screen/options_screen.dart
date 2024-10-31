import 'package:bloc_sample_counter_may/color_screen/color_screen.dart';
import 'package:bloc_sample_counter_may/counter_screen/counter_screen.dart';
import 'package:bloc_sample_counter_may/facts_screen/facts_screen.dart';
import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CounterScreen(),
                      ));
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey,
                    child: Text("Counter"))),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColorScreen(),
                      ));
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey,
                    child: Text("Color"))),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FactsScreen(),
                      ));
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey,
                    child: Text("facts"))),
          ],
        ),
      ),
    );
  }
}
