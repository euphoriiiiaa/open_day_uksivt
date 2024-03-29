import 'package:flutter/material.dart';
import 'package:open_day_uksivt/screens/book_page.dart';
import 'package:open_day_uksivt/screens/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: const Color.fromARGB(204, 213, 174, 145),
        useMaterial3: true,
      ),
      home: const MainPage(),
      routes: {
        '/book_page':(context) => const BookPage()
      },
    );
  }
}
