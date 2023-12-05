part of 'text_change_bloc.dart';

abstract class ChangeTextEvent extends Equatable {
  @override
  List<Object> get props => [];

  const ChangeTextEvent();
}

class ResetChangeTextEvent extends ChangeTextEvent {}

class SuccessChangeTextEvent extends ChangeTextEvent {
  final String transformedText;

  const SuccessChangeTextEvent(this.transformedText);

  @override
  List<Object> get props => [transformedText];
}
