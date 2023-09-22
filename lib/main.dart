

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

  Map<String, double> number = {
    'num1':0 ,
    'num2': 0,
    'num3':0,
  };
  double result = 0;

  @override
  Widget build(BuildContext context) {

    getInput(inputKey,inputValue){
      number.update(inputKey, (value) => inputValue);
    }

    addNumber(){
      result = number['num1']! + number['num2']! + number['num3']!;
    }

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
                    getInput('num1', double.parse(value));
                  },
                  decoration: fieldInput('Number 1'),
                  style: inputTextStyle(),
                ),
              ),
              Container(
                padding: linePadding(),
                child: TextField(
                  onChanged: (value) {
                    getInput('num2', double.parse(value));
                  },
                  decoration: fieldInput('Number 2'),
                  style: inputTextStyle(),
                ),
              ),
              Container(
                padding: linePadding(),
                child: TextField(
                  onChanged: (value) {
                    getInput('num3', double.parse(value));
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
                    print(number['num1']);
                    print(number['num2']);
                    print(number['num3']);
                    print(number['num1']! + number['num2']! + number['num3']!);

                    setState(() {
                      addNumber();
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
