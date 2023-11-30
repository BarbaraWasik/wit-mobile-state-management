import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wit_cubit_example_1/utils/random_color.dart';

part 'background_state.dart';

class BackgroundCubit extends Cubit<BackgroundState> {
  // BackgroundCubit() : super(const BackgroundInitial());

  void changeBackgroundColor() {
    var newRandomColor = Utils.getRandomColor();

    // TODO: Wyemituj stan zmiany tła i podaj newRandomColor jako nowy kolor
  }

  void restToInitialBackground() {
    // TODO: Wyemituj stan początkowy
  }
}
