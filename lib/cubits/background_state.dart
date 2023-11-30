part of 'background_cubit.dart';

abstract class BackgroundState extends Equatable {
  final Color colorValue;

  const BackgroundState(this.colorValue);

  @override
  List<Object?> get props => [colorValue];
}

class BackgroundInitial extends BackgroundState {
  const BackgroundInitial() : super(Colors.white);
}

class BackgroundChange extends BackgroundState {
  const BackgroundChange(Color colorValue) : super(colorValue);
}
