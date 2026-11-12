import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CalculadoraApp()));

class CalculadoraApp extends StatefulWidget {
  _CalculadoraAppState createState() => _CalculadoraAppState();
}

class _CalculadoraAppState extends State<CalculadoraApp> {
  double primeiroNumero = 0;
  String operador = '';
  double segundoNumero = 0;
  double resultado = 0;
  String ecra = '';

  void botoesEcra( String digito) {
    ecra = ecra + digito;
    if (ecra.length > 21) {
      ecra = ecra.substring(0,21);
    }

  }

  void operadores(String op){
    primeiroNumero = double.parse(ecra);
    operador = op;
    ecra = '';
    print(primeiroNumero);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Row(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Text('Calculadora', style: TextStyle(color: Colors.white)),
          Padding(padding: EdgeInsets.all(28)),
          Text('Converter', style: TextStyle(color: Colors.white)),
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
    ),

    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.black,
          padding: EdgeInsets.all(40),
          child: Text(
            ecra,
            style: TextStyle(fontSize: 35, color: Colors.white),
            textAlign: TextAlign.right,
          ),
        ),

        

        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.delete),
              ),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
              
              }, child: Text('AC')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {}, child: Text('%')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {}, child: Text('/')),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: ElevatedButton(onPressed: () {
                setState(() {
                  botoesEcra('7') ;
                });
              }, child: Text('7')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                setState(() {
                   botoesEcra('8') ;
                });
              }, child: Text('8')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('9') ;
                });
              }, child: Text('9')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('X') ;
                });
              }, child: Text('X')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('4') ;
                });
              }, child: Text('4')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('5') ;
                });
              }, child: Text('5')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('6') ;
                });
              }, child: Text('6')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('-') ;
                });
              }, child: Text('-')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('1') ;
                });
              }, child: Text('1')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('2') ;
                });
              }, child: Text('2')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('3') ;
                });
              }, child: Text('3')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  operadores('+') ;
                });
              }, child: Text('+')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('') ;
                });
              }, child: Text('')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('0') ;
                });
              }, child: Text('0')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra(',') ;
                });
              }, child: Text(',')),
            ),
            Expanded(
              child: ElevatedButton(onPressed: () {
                 setState(() {
                  botoesEcra('=') ;
                });
              }, child: Text('=')),
            ),
          ],
        ),
      ],
    ),
  );
}
