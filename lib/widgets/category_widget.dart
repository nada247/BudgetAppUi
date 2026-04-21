import 'package:budget_app_ui/screens/category_screen.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 0;  i < 5 ; i++)
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return CategoryScreen();
            }));
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10 ,horizontal: 20 ),
            padding: EdgeInsets.all(20) ,
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0,2),
                  blurRadius: 6,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Food', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('\$300 / \$450', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),)
                  ],
                ),
                SizedBox(height: 10,),
                Stack(
                  children: [
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
