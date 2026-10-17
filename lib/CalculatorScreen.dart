import 'package:flutter/material.dart';
import 'package:hw_calculator/CalculatorProvider.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var calc = context.watch<CalculatorProvider>();

    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(
        backgroundColor: Color(0xFF0F172A),
        title: Row(
          children: [
            Icon(Icons.calculate, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Calculator",
              style: TextStyle(color: Colors.white, fontWeight: .bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: .all(16),
        child: Column(
          children: [
            Container(
              width: .infinity,
              height: 160,
              padding: .all(20),
              decoration: BoxDecoration(
                color: Color(0xFF1E293B),
                borderRadius: .circular(20),
              ),
              child: Column(
                mainAxisAlignment: .end,
                crossAxisAlignment: .end,
                children: [
                  Text(
                    calc.equation,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    calc.display,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: .bold,
                      color: calc.display == 'Error' ? Colors.red : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                spacing: 12,
                children: [
                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().clear();
                              },
                              child: Text(
                                "C",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: .bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().deleteLast();
                              },
                              child: Text(
                                "⌫",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: .bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFFF59E0B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().selectOperator('÷');
                              },
                              child: Text(
                                "÷",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: .bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('7');
                              },
                              child: Text(
                                "7",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('8');
                              },
                              child: Text(
                                "8",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('9');
                              },
                              child: Text(
                                "9",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFFF59E0B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().selectOperator('×');
                              },
                              child: Text(
                                "×",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('4');
                              },
                              child: Text(
                                "4",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('5');
                              },
                              child: Text(
                                "5",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('6');
                              },
                              child: Text(
                                "6",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFFF59E0B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().selectOperator('-');
                              },
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('1');
                              },
                              child: Text(
                                "1",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('2');
                              },
                              child: Text(
                                "2",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('3');
                              },
                              child: Text(
                                "3",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFFF59E0B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().selectOperator('+');
                              },
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().inputNumber('0');
                              },
                              child: Text(
                                "0",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF1E293B),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().decimal();
                              },
                              child: Text(
                                ".",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: .infinity,
                            child: MaterialButton(
                              color: Color(0xFF10B981),
                              shape: RoundedRectangleBorder(
                                borderRadius: .circular(16),
                              ),
                              onPressed: () {
                                context.read<CalculatorProvider>().calculate();
                              },
                              child: Text(
                                "=",
                                style: TextStyle(fontSize: 26, fontWeight: .bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}