part of 'text_change_bloc.dart';

abstract class ChangeTextState extends Equatable {
  const ChangeTextState();

  @override
  List<Object> get props => [];
}

class ChangeTextInitial extends ChangeTextState {}

class ChangeTextLoading extends ChangeTextState {}

class ChangeTextSuccess extends ChangeTextState {
  final String transformedText;

  const ChangeTextSuccess(this.transformedText);

  @override
  List<Object> get props => [transformedText];
}
