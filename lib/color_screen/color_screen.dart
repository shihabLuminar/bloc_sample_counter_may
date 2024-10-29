import 'package:bloc_sample_counter_may/color_screen/bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colorList = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.brown,
      Colors.cyan,
      Colors.teal,
      Colors.indigo,
    ];
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.selectedColor,
          body: ListView.separated(
              padding: EdgeInsets.all(60),
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      context
                          .read<ColorBloc>()
                          .add(ColorSelection(newColor: colorList[index]));
                    },
                    child: Container(color: colorList[index], height: 50),
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 15),
              itemCount: colorList.length),
        );
      },
    );
  }
}
