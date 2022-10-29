import 'package:flutter/material.dart';

class MyProgress extends StatelessWidget {
  const MyProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Financeiro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Projeto Fimnanceiro'),
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
  int value = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
          TextField(
            onChanged: (valor) {
              setState(() {
                if (valor.isNotEmpty) {
                  value = int.parse(
                    valor,
                  );
                }
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(
            height: 20.0,
          ),
          
          Container(
            color: Colors.grey.shade400,
            height: 4.0,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: value,
                  child: Container(
                    color: Colors.blue,
                    height: 3.0,
                  ),
                ),
                Flexible(
                  flex: 100 - value,
                  child: Container(),
                ),
              ],
            ),
          ),
          
        ],
      )),
    );
  }
}