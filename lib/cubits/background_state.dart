part of 'background_cubit.dart';

abstract class BackgroundState extends Equatable {
  final Color colorValue;

  const BackgroundState(this.colorValue);

  @override
  List<Object?> get props => [colorValue];
}

// TODO:
// 1. Stwórz BackgroundInitial, który przyjmuje Colors.white jako wartość domyślną/początkową
// 2. Stwórz BackgroundChange, stan zmiany koloru tła, który zależy od colorValue
