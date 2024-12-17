import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});
  @override

  Widget build(BuildContext context) {
  // store the border widget in one variable
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 255, 0, 0),
        width: 2.0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.circular(60),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "0",
              style:TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent),
            ),
            TextField(
              keyboardType:const TextInputType.numberWithOptions(decimal: true),
              style:const TextStyle(color: Color.fromARGB(255, 0, 124, 37)),
              decoration: InputDecoration(
                focusedBorder: border,
                enabledBorder: border,
                hintText: "Please enter the amount",
                hintStyle:const TextStyle(color: Color.fromARGB(179, 0, 0, 0)),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
                prefixIconColor: Color.fromARGB(179, 0, 0, 0),
                filled: true,
                fillColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
