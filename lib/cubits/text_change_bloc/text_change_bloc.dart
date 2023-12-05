import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wit_cubit_example_1/cubits/bloc_utils.dart';

part 'text_change_event.dart';
part 'text_change_state.dart';

class ChangeTextBloc extends Bloc<ChangeTextEvent, ChangeTextState> {
  static const Duration debounceDuration = Duration(milliseconds: 1000);

  ChangeTextBloc() : super(ChangeTextInitial()) {
    on<SuccessChangeTextEvent>((event, emit) => _handleSuccessTransformText(event, emit), transformer: BlocUtils.debounce(debounceDuration));
    on<ResetChangeTextEvent>((_, emit) => emit(ChangeTextInitial()));
  }

  Future<void> _handleSuccessTransformText(SuccessChangeTextEvent event, Emitter<ChangeTextState> emit) async {
    emit(ChangeTextLoading());
    emit(ChangeTextSuccess(event.transformedText.toUpperCase()));
  }
}
