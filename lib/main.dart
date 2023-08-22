import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subindo o Seu Projeto Flutter no GitHub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF8a8a6a)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bem vindo(a)!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'Bem-vindo(a) ao meu primeiro app para o Santander Bootcamp 2023 - Mobile com Flutter!',
                style: TextStyle(fontSize: 32, color: Color(0xFF333333)),
                maxLines: 3,
                overflow: TextOverflow.clip,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            Icon(
              Icons.thumb_up_alt_rounded,
              size: 36,
              color: Color(0xFF8a8a6a),
            ),
          ],
        ),
      ),
    );
  }
}
