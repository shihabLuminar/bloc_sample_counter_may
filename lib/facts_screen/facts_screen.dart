import 'package:bloc_sample_counter_may/facts_screen/bloc/facts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactsScreen extends StatelessWidget {
  const FactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<FactsBloc>().add(FetchData());
        },
      ),
      body: Center(
        child: BlocBuilder<FactsBloc, FactsState>(
          builder: (context, state) {
            return state.isLoading
                ? CircularProgressIndicator()
                : Text(state.fact.toString());
          },
        ),
      ),
    );
  }
}
