import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hm_todo/Logic.dart';
import 'package:hm_todo/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => TodoScreen(),
        },
      ),
    );
  }
}