import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var equation = "";
  var result = "";
  var message = "";

  computeResult() {
    result = equation;

    Parser par = Parser();
    Expression exp = par.parse(equation);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      equation = eval.toString();
    });
  }

  appendPoint() {
    setState(() {
      equation += '.';
    });
  }

  appendZero() {
    setState(() {
      equation += '0';
    });
  }

  appendOne() {
    setState(() {
      equation += "1";
    });
  }

  appendTwo() {
    setState(() {
      equation += "2";
    });
  }

  appendThree() {
    setState(() {
      equation += "3";
    });
  }

  appendFour() {
    setState(() {
      equation += "4";
    });
  }

  appendFive() {
    setState(() {
      equation += "5";
    });
  }

  appendSix() {
    setState(() {
      equation += "6";
    });
  }

  appendSeven() {
    setState(() {
      equation = equation + "7";
    });
  }

  appendEight() {
    setState(() {
      equation += "8";
    });
  }

  appendNine() {
    setState(() {
      equation += "9";
    });
  }

  appendPlus() {
    setState(() {
      equation += "+";
    });
  }

  appendMinus() {
    setState(() {
      equation += "-";
    });
  }

  appendMultiply() {
    setState(() {
      equation += "*";
    });
  }

  appendDivide() {
    setState(() {
      equation += "/";
    });
  }

  appendPercentage() {
    setState(() {
      equation += "%";
    });
  }

  helloMessage() {
    setState(() {
      message = "Made By Shahrayar";
    });
  }

  clearMessage() {
    setState(() {
      message = "";
    });
  }

  Widget putButton(var text, var toPress,
      {btnColorCode = 0xff566573, textColor = Colors.white}) {
    return ElevatedButton(
        onPressed: toPress,
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: Color(btnColorCode),
            onPrimary: Colors.grey),
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: textColor)));
  }

  clear() {
    setState(() {
      equation = "";
      result = "";
      message = "";
    });
  }

  removeLastLetter() {
    setState(() {
      if (equation != null && equation.length > 0) {
        equation = equation.substring(0, equation.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff344955),
      backgroundColor: Color(0xff566573),

      body: Stack(
        children: [
          Positioned(
              top: 10,
              right: 75,
              child: Text(
                message,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          Positioned(
              right: 30,
              top: 70,
              child: Text(
                equation,
                style: TextStyle(fontSize: 40, color: Colors.white),
              )),
          Positioned(
            right: 30,
            top: 140,
            child: Text(result,
                style: TextStyle(
                  color: Color(0xffABB2B9),
                  fontSize: 25,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // height: 451,

              height: MediaQuery.of(context).size.height * 0.62,

              // color: Colors.red,

              // color: Colors.red,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  putButton("AC", clear, btnColorCode: 0xffABB2B9),
                  ElevatedButton(
                      onPressed: removeLastLetter,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Color(0xffABB2B9),
                      ),
                      child: Icon(Icons.backspace)),
                  putButton("%", appendPercentage,
                      btnColorCode: 0xffffffff, textColor: Colors.green),
                  putButton("/", appendDivide,
                      btnColorCode: 0xffffffff, textColor: Colors.green),
                  putButton("7", appendSeven),
                  putButton("8", appendEight),
                  putButton("9", appendNine),
                  putButton(
                    "X",
                    appendMultiply,
                    btnColorCode: 0xffffffff,
                    textColor: Colors.green,
                  ),
                  putButton("4", appendFour),
                  putButton("5", appendFive),
                  putButton("6", appendSix),
                  putButton("-", appendMinus,
                      btnColorCode: 0xffffffff, textColor: Colors.green),
                  putButton("1", appendOne),
                  putButton("2", appendTwo),
                  putButton("3", appendThree),
                  putButton(
                    "+",
                    appendPlus,
                    btnColorCode: 0xffffffff,
                    textColor: Colors.green,
                  ),
                  ElevatedButton(
                      onPressed: helloMessage,
                      onLongPress: clearMessage,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Color(0xff566573),
                      ),
                      child: Icon(Icons.face)),
                  putButton(
                    "0",
                    appendZero,
                  ),
                  putButton(".", appendPoint),
                  putButton("=", computeResult, btnColorCode: 0xffFFBF00),
                ],
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
