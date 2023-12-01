import 'package:amazon_clone/Layouts/Search_screen.dart';
import 'package:amazon_clone/Utils/data.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget implements PreferredSizeWidget{ //with => implements
  final bool isReadOnly;
  final bool hasBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(kAppBarHeight);

   SearchBarWidget({
   super.key,
   PreferredSize,
   required this.isReadOnly,
   required this.hasBackButton,
  });

  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: const BorderSide(color: Colors.grey,width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: kAppBarHeight,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
      colors: backgroundGradient,
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      hasBackButton ? IconButton(onPressed: (){
        Navigator.pop(context);
      }, 
      icon: const Icon(Icons.arrow_back)) : Container(),
      SizedBox(
        width: screenSize.width * 0.7,
         child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 8,
                spreadRadius: 1,
                offset: const Offset(0, 5),
              ),
            ],
          ),
           child: TextField(
                 readOnly: isReadOnly,
                 onTap: (){
            if(isReadOnly){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchScreen(),
              ));
            }
                 },
               decoration: InputDecoration(
               hintText: "Search for something in Amazon" ,
               fillColor: Colors.white,
               filled: true,
               border: border,
               focusedBorder: border,
               ),
               ),
         ),
      ),
      IconButton(onPressed: (){}, icon: const Icon(
        Icons.mic_none_outlined),
      ),
    ],  
    ),
    );
  }
}