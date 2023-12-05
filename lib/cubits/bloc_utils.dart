import 'package:bloc/bloc.dart';
import 'package:rxdart/transformers.dart';

class BlocUtils {
  static EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
  }
}
