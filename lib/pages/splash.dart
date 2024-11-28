import 'package:flutter/material.dart';
import 'package:grocery_market_app/components/buttons.dart';
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipPath(
              clipper: BezierClipper(),
              child: Container(
                color:  Color.fromARGB(255, 34, 139, 34),
                height: 400,
              ),
            ),
            const Text(
              "Welcome to FreshCart",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            
            const Center(
              child: Text("From fresh produce to everyday essentials, we're here to deliver the best to your door!",
              style: TextStyle(
                
              ),),
              ),

            const SizedBox(height: 25),

            Padding(padding: EdgeInsets.symmetric(horizontal: 140),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 34, 139, 34),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  
                ),
                Container(
                  width:15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  
                ),

                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  
                ),
              ],
            ),),
            SizedBox(height: 50),

            Buttons()

           ],
        ),
      ),
    );
  }
}

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.2;
    Path path = Path();

    path.lineTo(
      0,
      height - heightOffset,
    );
    path.quadraticBezierTo(
      width * 0.75,
      height - (heightOffset * 3),
      width,
      height - heightOffset,
    );
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
