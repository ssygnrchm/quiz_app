import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/data/datasource/local/option_memory_datasource.dart';
import 'package:quiz_app/data/datasource/local/question_memory_datasource.dart';
import 'package:quiz_app/data/repositories/question_options_repository_impl.dart';
import 'package:quiz_app/presentation/pages/splash_page.dart';
import 'package:quiz_app/presentation/providers/question_option_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create:
              (_) => QuestionOptionsRepositoryImpl(
                questionDatasource: QuestionMemoryDatasource(),
                optionMemoryDatasource: OptionMemoryDatasource(),
              ),
        ),
        ChangeNotifierProxyProvider<
          QuestionOptionsRepositoryImpl,
          QuestionOptionProvider
        >(
          create:
              (context) => QuestionOptionProvider(
                Provider.of<QuestionOptionsRepositoryImpl>(
                  context,
                  listen: false,
                ),
              ),
          update:
              (context, repository, previous) =>
                  previous!..setRepository(repository),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        theme: ThemeData(
          fontFamily: 'Baloo 2',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 70, 67),
          ),
        ),
        home: SplashPage(),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
