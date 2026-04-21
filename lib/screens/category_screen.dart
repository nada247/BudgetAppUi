import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final double SpendAmount = 250;
    final TotalBudget =500;
    final double radialBarPercent= SpendAmount / TotalBudget;
    return Scaffold(
      appBar: AppBar(
        title: Text("Food",style: TextStyle(fontSize: 25),), centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add , size: 30,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0,2),
                    blurRadius: 6
                  )
                ]
              ),
              child: CustomPaint(
                // foregroundPainter: RadialPainter(),
                child: Center(
                  child: Text('\$${SpendAmount} / \$${TotalBudget}',
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            for(int i = 50 ; i < 600 ; i +=65)
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6
                  )
                ]
              ),
              child: Padding(padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Item' ,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(
                        "\$${i.toString()}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
