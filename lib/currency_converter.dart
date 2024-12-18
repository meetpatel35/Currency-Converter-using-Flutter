import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
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
      borderRadius: BorderRadius.circular(12),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text("Curreny Converter",style:TextStyle(color: Colors.white) ),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "0",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(color: Color.fromARGB(255, 0, 124, 37)),
                decoration: InputDecoration(
                  focusedBorder: border,
                  enabledBorder: border,
                  hintText: "Please enter the amount",
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(179, 0, 0, 0)),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Color.fromARGB(179, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                
                onPressed: () {
                  if (kDebugMode) {
                    print("converted");
                  }
                },
                style:ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  minimumSize: const ui.Size(double.infinity, 50),
                  shape:
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        ),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
