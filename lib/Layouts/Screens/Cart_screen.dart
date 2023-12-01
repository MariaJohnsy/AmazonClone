import 'package:amazon_clone/Custom_Main_Button.dart';
import 'package:amazon_clone/Model/product_model.dart';
import 'package:amazon_clone/Utils/data.dart';
import 'package:amazon_clone/Model/UserDetialModel.dart';
import 'package:amazon_clone/Widgets/User_detials_bar.dart';
import 'package:amazon_clone/Widgets/cart_item_widget.dart';
import 'package:amazon_clone/resources/search_bar_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(
      isReadOnly: true, hasBackButton: false),
      body: Center(
        child: Column(
          children: [
            UserDetialBar(
              offset: 0,
               userDetails: UserDetialModel(
                name: "Maria Johnsy", address:  "ABCDEFGHIJ"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomMainbutton(
                    child:Text("proceed to by (n) items", style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                     color: yellowColor, 
                     isloading: false,
                      onPressed: (){}),
                ),
                Expanded(
                  child: ListView.builder(itemCount: 5,itemBuilder: (context,index){
                  return CartItemWidget(
                  product: productModel(
                  url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
                 productName: "Thalappathy Vijay",
                 cost: 1000000000000,
                 discount: 0,
                  uid: "ABCDEFGHIJ",
                   sellerName: "Fan seller", 
                   sellerUid: "abcdefghij",
                    rating: 1, 
                    noOfRating: 1),
                    );
                  }),
                ),
          ],
        ),
      ),
    );
  }
}