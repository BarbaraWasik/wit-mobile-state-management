import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wit_cubit_example_1/cubits/background_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Change background'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BackgroundCubit(),
      child: BlocBuilder<BackgroundCubit, BackgroundState>(
        builder: (context, state) {
          return Scaffold(
            // TODO: Zastąp Colors.grey wartością koloru, który otrzymasz po kliknięciu na przycisk
            // TODO "Change background color" lub reset. Tip: skorzystaj z właściwości state
            backgroundColor: Colors.grey,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Your background',
                  ),
                  ElevatedButton(
                      onPressed: () => {
                            // TODO: Skorzystaj z context.read<TwójCubit> i wywołaj metodę która w rezultacie
                            // TODO: zwraca losowy kolor
                          },
                      child: const Text('Change background color'))
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => {
                // TODO: Tak jak powyżej, tym razem zwracamy domyślny kolor
              },
              child: const Text('Reset'),
            ),
          );
        },
      ),
    );
  }
}
