import 'package:flutter/material.dart';
class CustomMainbutton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool isloading;
  final VoidCallback onPressed;
  const CustomMainbutton({super.key,required this.child, required this.color, required this.isloading, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(screenSize.width * 0.5,40),
      ),
      onPressed: onPressed, 
      child: !isloading
      ?child : const Padding(
        padding: EdgeInsets.symmetric(vertical:5),
        child: AspectRatio(
          aspectRatio: 1 / 1 ,
          child: CircularProgressIndicator(
            color: Colors.white,),
            ),
            ),
            );
  }
}