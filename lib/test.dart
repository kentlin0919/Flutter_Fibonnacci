import 'package:flutter/material.dart';

class Fibonacciwiget extends StatefulWidget {
  const Fibonacciwiget({super.key});

  @override
  State<Fibonacciwiget> createState() => _FibonacciwigetState();
}

class _FibonacciwigetState extends State<Fibonacciwiget> {
  int number = 1;
  int sum = 1;

  founc(num) {
    if (num >= 2) {
      return (founc(num - 1)) + (founc(num - 2));
    } else {
      return num;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (number != 0) {
                      setState(() {
                        number--;
                        sum = founc(number);
                        debugPrint("$number-$sum");
                      });
                    }
                  },
                  child: const Icon(Icons.remove),
                ),
                Text("$number"),
                InkWell(
                  onTap: () {
                    if (number != 0) {
                      setState(() {
                        number++;
                        sum = founc(number);
                        debugPrint("$number-$sum");
                      });
                    }
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
            Text("$sum")
          ],
        ),
      ),
    );
  }
}
