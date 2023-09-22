import 'package:flutter/material.dart';

import 'package:sum_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  double num1 = 0;
  double num2 = 0;
  double num3 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Sum App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: linePadding(),
                child: ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: Text(result.toString()),
                ),
              ),
              Container(
                padding: linePadding(),
                child: TextField(
                  onChanged: (value) {
                    num1 = double.parse(value);
                  },
                  decoration: fieldInput('Number 1'),
                  style: inputTextStyle(),
                ),
              ),
              Container(
                padding: linePadding(),
                child: TextField(
                  onChanged: (value) {
                    num2 = double.parse(value);
                  },
                  decoration: fieldInput('Number 2'),
                  style: inputTextStyle(),
                ),
              ),
              Container(
                padding: linePadding(),
                child: TextField(
                  onChanged: (value) {
                    num3 = double.parse(value);
                  },
                  decoration: fieldInput('Number 3'),
                  style: inputTextStyle(),
                ),
              ),
              Container(
                width: double.infinity,
                padding: linePadding(),
                child: ElevatedButton(
                  style: buttonStyle(),
                  child: const Text(
                    'sum',
                  ),
                  onPressed: () {
                    print(num1);
                    print(num2);
                    print(num3);
                    print(num1+num2+num3);
                    setState(() {
                      result = num1+num2+num3;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
