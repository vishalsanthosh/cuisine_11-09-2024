import "package:cuisine/resdatabase.dart";
import "package:flutter/material.dart";

class Cuisine2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/mainpic.jpg'),
                fit: BoxFit.cover
                ),
              ),
              child: Stack(
               children: [
                Positioned(
                  top:10,
                  left: 10,
                  child: 
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.arrow_back,color: Colors.white,),
                ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    child: Text("Filters",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  )),
                  Positioned(
                    top: 160,
                    left: 10,
                    child:Container(
                      child: Text("American",style:TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.bold),),
                    )),
                     Positioned(
                    top: 190,
                    left: 10,
                    child:Container(
                      child: Text("Restaurants",style:TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.bold),),
                    )),
                     Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    child: Text("Filters",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  )),
                  Positioned(
                    top: 228,
                    left: 10,
                    child:Container(
                      child: Text(" 36 places",style:TextStyle(color: const Color.fromARGB(255, 83, 81, 81),fontSize: 15,fontWeight: FontWeight.bold),),
                    ),),

              
               ],
               
               
              ),
              
            ),
            
          
            
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
               separatorBuilder: (context,index){
                return SizedBox(height: 22,);
               },
                itemCount:4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 77, 72, 72),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:
                            AssetImage(Database.nList[index]['image']),
                            fit: BoxFit.cover
                             ),
                             
                          ),
                          
                        ),
                        SizedBox(width: 12,),
                        Column(
                         
                          children: [
                            Text(Database.nList[index]['n1'],
                            style: TextStyle(color: Colors.white,fontSize: 16),
                            ),
                          ],
                          
                        ),
                        SizedBox(height: 60,),
                        Row(
                         
                          children: [
                            Icon(Icons.pin_drop,size: 15,color: Colors.white,),
                            Text(Database.nList[index]['n2'],style: TextStyle(color: Colors.white,fontSize:15)),
                            

                            
                          ],
                        ),
                        SizedBox(
                          
                          height: 100,

                        ),
                        Row(
                          
                          children: [
                            Icon(Icons.star,color: Colors.yellow,size: 15,),
                            Text(Database.nList[index]['t1'],style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                    
                  );
                }, ),
          )
          
        ],
      ),
    );
  }
}