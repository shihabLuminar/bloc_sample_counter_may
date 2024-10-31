part of 'facts_bloc.dart';

class FactsState {
  String? fact;
  bool isLoading;
  FactsState({this.fact, this.isLoading = false});
}

final class FactsInitial extends FactsState {}
