import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElevatedButton(onPressed: (){},
       style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      backgroundColor: const Color.fromARGB(255, 34, 139, 34),     
       ),
       child: const Text("Get Started",
       style: TextStyle(color: Colors.white,
       fontSize: 25,
       fontWeight: FontWeight.bold),),
       )
        );
     
}
}