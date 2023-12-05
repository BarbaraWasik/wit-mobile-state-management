import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wit_cubit_example_1/cubits/bloc_utils.dart';

part 'text_change_event.dart';
part 'text_change_state.dart';

class ChangeTextBloc extends Bloc<ChangeTextEvent, ChangeTextState> {
  static const Duration debounceDuration = Duration(milliseconds: 1000);

  ChangeTextBloc() : super(ChangeTextInitial()) {
    on<SuccessChangeTextEvent>((event, emit) => _handleSuccessTransformText(event, emit), transformer: BlocUtils.debounce(debounceDuration));

    //TODO: Na ResetChangeTextEvent emituj ChangeTextInitial()
  }

  Future<void> _handleSuccessTransformText(SuccessChangeTextEvent event, Emitter<ChangeTextState> emit) async {
    //TODO:
    // 1. Emituj ChangeTextLoading()
    // 2. Emituj ChangeTextSuccess ktory przyjmuje transformedText - skorzystaj z event. Tekst ma się w wielkie liter za pomocą toUpperCase()

  }
}
