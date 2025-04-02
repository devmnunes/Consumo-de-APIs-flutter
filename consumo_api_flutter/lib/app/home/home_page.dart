import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Consumo de APIs',
          style: TextStyle(
            color: const Color.fromARGB(241, 255, 254, 254),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(249, 184, 14, 222),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 7,
      ),
      body: Container(),
    );
  }
}
