part of 'color_bloc.dart';

class ColorEvent {}

class ColorSelection extends ColorEvent {
  Color newColor;
  ColorSelection({required this.newColor});
}
