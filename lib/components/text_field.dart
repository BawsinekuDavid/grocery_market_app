import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   final TextEditingController controller  ;
  final String hintText;
  final bool obsecureText;
   const MyTextField({super.key, required this.controller, required this.hintText, required this.obsecureText,});

  @override
  Widget build(BuildContext context) {
    return  TextField(
            controller: controller,
            obscureText: false,
            
             decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green.shade100),
                borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.green.shade400)
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey
              ),
            ),

            
             
          );
  }
}

