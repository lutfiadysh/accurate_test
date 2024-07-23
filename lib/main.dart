import 'package:accurate_lutfi/presentation/pages/user/user_page.dart';
import 'package:flutter/material.dart';
import 'package:accurate_lutfi/injection/injection_container.dart' as sl;

Future<void> main() async {
  sl.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accurate Luti Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserPage(),
    );
  }
}
