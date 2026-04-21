import 'package:budget_app_ui/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/category_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            forceElevated: true,
            floating: true,
            leading: IconButton(
                onPressed: (){},
                icon: Icon(Icons.settings , size: 30, color: Colors.white,)),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("My Budget" ,style: TextStyle(color: Colors.white),),

              centerTitle: true,
            ),
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.add , size: 30,color: Colors.white,)),
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 2,
              (BuildContext context, int index){
              if(index == 0 ){
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 6,
                        color: Colors.black12,
                      )]
                  ),
                  child: BarChart(),
                );
              }
              else{
                return CategoryWidget();
              }
            }
          ))
        ],
      ),
    );
  }
}
