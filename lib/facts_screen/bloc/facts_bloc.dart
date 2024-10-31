import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

part 'facts_event.dart';
part 'facts_state.dart';

class FactsBloc extends Bloc<FactsEvent, FactsState> {
  FactsBloc() : super(FactsInitial()) {
    on<FetchData>((event, emit) async {
      emit(FactsState(isLoading: true));
      final url = Uri.parse("https://catfact.ninja/fact");
      try {
        final res = await http.get(url);
        if (res.statusCode == 200) {
          var convertedData = jsonDecode(res.body);
          emit(FactsState(fact: convertedData["fact"], isLoading: false));
        }
      } catch (e) {
        print(e);
      }
    });
  }
}
