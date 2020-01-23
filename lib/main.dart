
import "package:flutter/material.dart";

import 'package:sliding_up_panel/sliding_up_panel.dart';
  

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  
  get borderRadius => null;
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return   MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Card"),
      ),
      body: 
      SlidingUpPanel(
       renderPanelSheet: false,
      panel: _floatingPanel(),
      collapsed: _floatingCollapsed(),
     
    ),
    ),

    
  );
      
  }}
  Widget _floatingCollapsed(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
    ),
    margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
    child: Center(
      child: Icon(
        Icons.arrow_upward,
        color: Colors.white,
      ),
    ),
  );
}

Widget _floatingPanel(){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
      boxShadow: [
        BoxShadow(
          blurRadius: 20.0,
          color: Colors.grey,
        ),
      ]
    ),
     margin: const EdgeInsets.all(24.0),
    child: 
      Container(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.edit,color: Colors.orange,),
              
              title: Text("Address: abc..."),
              trailing: Icon(Icons.arrow_drop_down,color:Colors.orange,),
            ),
            Divider(color: Colors.orangeAccent,),
            ListTile(
              leading: 
                  Text("Delivering between: 5 A.M-7 A.M"),
                  title:
                  Icon(Icons.arrow_drop_down_circle,color:Colors.orange),

               
            ),
            Padding(
              padding: EdgeInsets.only(left: 0,right: 0),
              child: Container(
                padding: EdgeInsets.only(left:3,right: 3),
                
                color: Colors.orange.withOpacity(0.8),
                child: Column(
                  
                  children: <Widget>[
                    ListTile(
                    
                      leading: Text("Item Total",style:TextStyle(color: Colors.white)),
                      trailing: Text("10",style:TextStyle(color: Colors.white)),
                    ),
                    Divider(color: Colors.white,),
                    ListTile(
                    
                      leading: Text("Delivery Charges",style:TextStyle(color: Colors.white)),
                      trailing: Text("100",style:TextStyle(color: Colors.white)),
                    ),
                    Divider(color: Colors.white,),
                    ListTile(
                    
                      leading: Text("Offer Applied",style:TextStyle(color: Colors.white)),
                      trailing: Text("100",style:TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    
  );
}  
 
