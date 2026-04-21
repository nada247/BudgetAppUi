import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    final double maxBarHeight = 220;
    return Column(
      children: [
        Text("Weekly Expenses",
        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , letterSpacing: 1.2),),

        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back , size: 30,)),
            Text("Sept 05,2025 - Sept 15,2025" , style:
              TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              ),),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward , size: 30,)),
          ],),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for( int i = 15 ; i<maxBarHeight ; i+=30 )
              Column(
              children: [
                Text('\$ $i' , style: TextStyle(fontWeight: FontWeight.w600),),
                SizedBox(height: 6,),
                Container(
                  height: i.toDouble(),
                  width: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                SizedBox(height: 6),
                Text("Sun" , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),)
              ],
            )
          ],
        )
      ],
    );
  }
}
