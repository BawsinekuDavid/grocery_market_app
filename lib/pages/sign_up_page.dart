 
import 'package:flutter/material.dart';
import 'package:grocery_market_app/components/app_btn.dart';
import 'package:grocery_market_app/components/text_field.dart';

class SignUpPage extends StatefulWidget {
  
 
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: MyTextField(controller: usernameController, hintText: 'hello', obsecureText: false,),
            ),
            
            SizedBox(height: 20),

            //sign in button
            AppBtn(lbl: "sign in", onPressed: ( ) {}, colorState: Colors.white, textColorState: Colors.green,)
        ],
        
      ),

    

        
    );
  }
}