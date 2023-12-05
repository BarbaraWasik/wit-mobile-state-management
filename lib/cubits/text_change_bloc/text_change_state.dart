part of 'text_change_bloc.dart';

abstract class ChangeTextState extends Equatable {
  const ChangeTextState();

  @override
  List<Object> get props => [];
}

class ChangeTextInitial extends ChangeTextState {}

//TODO:
// 1. Stwórz state ChangeTextLoading - na wzór ChangeTextInitial

class ChangeTextSuccess extends ChangeTextState {
  //TODO:
  // 2. Dodaj zmienną transformedText typu String i zanicjalizuj ją

  @override
  List<Object> get props => [transformedText];
}
