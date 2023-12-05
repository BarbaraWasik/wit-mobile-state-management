import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wit_cubit_example_1/cubits/text_change_bloc/text_change_bloc.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: TextField(
            onChanged: (text) {
              context.read<ChangeTextBloc>().add(SuccessChangeTextEvent(text));
            },
          ),
        ),
        BlocBuilder<ChangeTextBloc, ChangeTextState>(
          builder: (context, state) {
            if (state is ChangeTextLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ChangeTextSuccess) {
              return Column(
                children: [
                  Center(child: Text(state.transformedText, style: const TextStyle(fontSize: 20))),
                  ElevatedButton(onPressed: () => context.read<ChangeTextBloc>().add(ResetChangeTextEvent()), child: const Text("Reset"))
                ],
              );
            } else {
              return const SizedBox();
            }
          },
        )
      ],
    );
  }
}
