import 'package:cuisine/database.dart';
import 'package:flutter/material.dart';

class CuisineMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        centerTitle: true,
        title: Text("Cuisine",style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,),color: Colors.white,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.white,)
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 19, 18, 18),
      body: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2
          
           ) , itemCount: 6,
           itemBuilder: (BuildContext context,int index){
            return Padding(
              padding: EdgeInsets.all(4),
            
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(Database.myList[index]['image']),
                      fit: BoxFit.cover)),
               ),
               SizedBox(height: 2,),
               Text(Database.myList[index]['name'],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
               SizedBox(height: .5,),
               Text(Database.myList[index]['tag'],style: TextStyle(color: Colors.grey),)
                ],
                
              ),
            );
           }),
    );
  }
}