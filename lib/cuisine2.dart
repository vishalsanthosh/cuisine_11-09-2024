
import 'package:cuisine/resdatabase.dart';
import 'package:flutter/material.dart';

class Cuisine2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
 
    backgroundColor: Colors.black,
      
      body:Column(
        children: [

          Stack(
           children: [
           
           ClipRRect(
             child: Container(
             height: 260 ,
             width: double.infinity,
             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/mainpic.jpg"),
             fit: BoxFit.cover),
             ),
                      ),
           ),
                    Positioned(
           top:10,
           left:10,
           child:Container(
             height: 50,
             width: 50,
             child: Icon(Icons.arrow_back,color: Colors.white,size: 25, 
           ), ),
                    ),
          
          
           Positioned(
           top:10,
           right:2,
           child:Container(
             height: 100,
             width: 100,
             child: Text("Filters",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white),
           ), ),
                    ),
          
          
          Positioned(
           top:130,
           left:10,
           child:Container(
             height: 200,
             width: 230,
             child:   Text("American Restaurants",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold,color: Colors.white),
           ), ),
                    ),
          
          
          
                    Positioned(
           top:230,
           left:10,
           child:Container(
             height: 250,
             width: 260,
             child:   Text("36 places",style: TextStyle(fontSize: 19,color: const Color.fromARGB(255, 92, 89, 89)),
           ), ),
                    ),
          
                   ],
                    ),
          
          
          



           SizedBox(height: 10),
            ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context,index){
              return SizedBox(height: 20,);
            },
            itemCount: 4,
            itemBuilder: (context,index){
              return Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 41, 39, 39),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:AssetImage(Database.nList[index]['image']),
                            fit: BoxFit.cover ),
                            color: Colors.white),

                      ),
                      SizedBox(width:10),
                      Column(
            
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         
                          Text(Database.nList[index]['n1'],
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          
                          ),),
                          Spacer(),
                          Icon(Icons.favorite,color: Colors.white,size: 10,),
                            
                       SizedBox(height: 4),
                         Row(
                            children: [
                          Icon(Icons.pin_drop,size:10,color:  Colors.white),
                          Text(Database.nList[index]['n2'],
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          
                          ),),

                        
                        ],),

                          SizedBox(height: 12),
                          
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 10),
                              Text(Database.nList[index]['t1'],
                              style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                              
                              
                          
                            ],
                          ),
                        ],
                      ),

                     
                      
                            
                          ],
                        
                        ),
              ),
                     
                      
                      
      );
  },
  
      )],
                        ),
                      );
      
            

              
            }
              
  
  
                

  }

              
      
  