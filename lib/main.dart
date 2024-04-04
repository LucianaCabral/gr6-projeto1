import 'dart:math';

import 'package:flutter/material.dart';

import 'exercises/exercise_10.dart';
import 'exercises/exercise_11.dart';
import 'exercises/exercise_13.dart';
import 'exercises/exercise_14.dart';
import 'exercises/exercise_17.dart';
import 'exercises/exercise_18.dart';
import 'exercises/exercise_2.dart';
import 'exercises/exercise_3.dart';
import 'exercises/exercise_4.dart';
import 'exercises/exercise_5.dart';
import 'exercises/exercise_6.dart';
import 'exercises/exercise_8.dart';
import 'exercises/exercise_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desenvolve 6',
      theme: ThemeData(
        colorScheme:
        ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Desenvove 6'),
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
  late String _result = '';
  String? _textChallenge;
  Random random = Random();

  final List<DropdownMenuItem<String>> _challengesList =
  List.generate(19, (index) {
    final challengeNumber = index + 1;
    return DropdownMenuItem<String>(
      value: 'challenge$challengeNumber',
      child: Text('challenge $challengeNumber'),
    );
  });

  void callChallenge() {
    Map<String, Function> challengeFunctions = {
      'challenge1': () => _challenge1(),
      'challenge2': () => _challenge2(),
      'challenge3': () => _challenge3(),
      'challenge4': () => _challenge4(),
      'challenge5': () => _challenge5(),
      'challenge6': () => _challenge6(),
      'challenge7': () => _challenge7(),
      'challenge8': () => _challenge8(),
      'challenge9': () => _challenge9(),
      'challenge10': () => _challenge10(),
      'challenge11': () => _challenge11(),
      'challenge12': () => _challenge12(),
      'challenge13': () => _challenge13(),
      'challenge14': () => _challenge14(),
      'challenge15': () => _challenge15(),
      'challenge16': () => _challenge16('arara'),
      'challenge17': () => _challenge17(),
      'challenge18': () => _challenge18(),
      'challenge19': () => _challenge19(),
    };

    if (challengeFunctions.containsKey(_textChallenge)) {
      challengeFunctions[_textChallenge]!();
    }
  }

  void _challenge1() {
    setState(() {
      int num1 = random.nextInt(10);
      int num2 = random.nextInt(10);
      if (num1 == num2) {
        _result = "The numbers are the same";
      } else {
        String biggerValue = max(num1, num2).toString();
        _result = "The bigger value between $num1 and $num2 is: $biggerValue ";
      }
    });
  }

  void _challenge2() {
    int a = random.nextInt(10);
    int b = random.nextInt(10);
    int c = random.nextInt(10);
    setState(() {
      String result = checkSum(a, b, c);
      _result = result;
    });
  }

  void _challenge3() {
    int number = random.nextInt(10);
    setState(() {
      String result = calculateFactorial(number);
      _result = result.toString();
    });
  }

  void _challenge4() {
    int minNumber = -100;
    int maxNumber = 100;
    setState(() {
      String result = checknumber(minNumber, maxNumber);
      _result = result.toString();
    });
  }

  void _challenge5() {
    int numberA = 5;
    int numberB = 5;
    int randomNumberA = random.nextInt(numberA);
    int randomNumberB = random.nextInt(numberB);
    setState(() {
      String result = checkTwoNumbers(randomNumberA, randomNumberB);
      _result = result.toString();
    });
  }

  void _challenge6() {
    int value = 100;
    setState(() {
      String result = checkpreviousnext(value);
      _result = result.toString();
    });
  }

  void _challenge7() {
    double salarioMinimo = 1412.00;
    double salarioUsuario = 2500.00;

    double salariosMinimos = salarioUsuario / salarioMinimo;
    String result =
        'The user earns ${salariosMinimos.toStringAsFixed(2)} minimum wages.';

    setState(() {
      _result = result;
    });
  }

  void _challenge8() {
    int value1 = random.nextInt(100);
    int value2 = random.nextInt(100);
    int value3 = random.nextInt(100);

    setState(() {
      String result = descendingOrder(value1, value2, value3);
      _result = result;
    });
  }

  void _challenge9() {
    setState(() {
      List<dynamic> result =
      challenge9(); // Chamando a função e recebendo a média e o status
      double media = result[0]; // Obtendo a média da lista retornada
      String status = result[1]; // Obtendo o status da lista retornada
      _result =
      'Média: $media\nStatus: $status'; // Atualizando o valor de _result
    });
  }

  void _challenge10() {
    setState(() {
      List<dynamic> result = challenge10();
      String nome = result[0];
      int idade = result[1];
      String mensagem = result[2];
      _result = '$nome - $mensagem';
    });
  }

  void _challenge11() {
    int numero = random.nextInt(10);
    setState(() {
      String result = showMultiplicationTable(numero);
      _result = result.toString();
    });
  }

  void _challenge12() {
    List<int> numbers = [1, 2, 3];

    List<int> squares = [];

    for (int number in numbers) {
      squares.add(number * number);
    }

    setState(() {
      _result = squares.toString();
    });
  }

  void _challenge13() {
    List<int> numbers = List.generate(10, (_) => Random().nextInt(100));
    setState(() {
      _result = countEvenAndOddNumbers(numbers);
    });
  }

  void _challenge14() {
    List<int> randomNumbers = generateRandomNumbers(10);
    setState(() {
      String result = findMinMax(randomNumbers);
      _result = result.toString();
    });
  }

  void _challenge15() {
    int limit = Random().nextInt(10);
    List<int> numbers = [];
    for (int i = 0; i <= limit; i++) {
      numbers.add(i);
    }
    setState(() {
      _result =
      "The generated limit is ${limit.toString()} and the list is: ${numbers.toString()}";
    });
  }

  void _challenge16(String palavra) {
    List<String> palavraArray = palavra.toLowerCase().split('');
    for (int i = 0; i < palavraArray.length; i++) {
      if (palavraArray[i] == " ") {
        palavraArray.removeAt(i);
      }
    }
    List<String> palavraAoContrario = palavraArray.reversed.toList();

    setState(() {
      if (palavraAoContrario.join('') == palavraArray.join('')) {
        _result = "A palavra ou frase $palavra é Palíndromo";
      } else {
        _result = "A palavra ou frase $palavra não é Palíndromo";
      }
    });
  }

  void _challenge17() {
    int value = random.nextInt(100);
    setState(() {
      if (isPrime(value)) {
        _result = '$value is PRIME.';
      } else {
        _result = '$value is not a prime!';
      }
    });
  }

  void _challenge18() {
    setState(() {
      List<dynamic> result =
      challenge18(); // Chamando a função e recebendo a palavra, frase e resultado
      String palavra = result[0]; // Obtendo a palavra da lista retornada
      String frase = result[1]; // Obtendo a frase da lista retornada
      int resultado = result[2]; // Obtendo o resultado da lista retornada
      _result =
      'Palavra: $palavra\nFrase: $frase\nOcorrências: $resultado'; // Atualizando o valor de _result
    });
  }

  void _challenge19() {
    List<String> words = [
      'foR',
      'scream',
      'CaRs',
      'poTatos',
      'racs',
      'creams',
      'scar',
      'four'
    ];

    Map<String, List<String>> groups = {};

    for (String word in words) {
      List<String> characters = word.toLowerCase().split('');
      characters.sort();
      String sortedWord = characters.join();

      if (!groups.containsKey(sortedWord)) {
        groups[sortedWord] = [];
      }
      groups[sortedWord]!.add(word);
    }

    List<List<String>> result = groups.values.toList();

    setState(() {
      _result = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF006400),
        title: Text(widget.title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(12.0),
            ),
            DropdownButton<String>(
              hint: const Text(
                'Select a challenge',
              ),
              value: _textChallenge,
              items: _challengesList,
              onChanged: (String? value) {
                setState(() {
                  _textChallenge = value;
                });
              },
            ),
            ButtonCalculate(
              callChallenge: () {
                callChallenge();
              },
            ),
            const SizedBox(height: 20),
            if (_result.isNotEmpty)
              const Text(
                'Result:',
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                _result,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonCalculate extends StatelessWidget {
  final Function() callChallenge;
  const ButtonCalculate({
    super.key,
    required this.callChallenge,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: double.maxFinite,
        height: 50,
        margin: const EdgeInsets.all(15),
        child: ElevatedButton(
          onPressed: callChallenge,
          child: const Text(
            'Calculate',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF006400)
            ),
          ),
        ),
      ),
    );
  }
}