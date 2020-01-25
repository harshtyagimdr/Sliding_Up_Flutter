
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
              trailing:  DropdownButton<String>(
                hint: Text("address"),
                  // value: address,
                  items: <String>['Address1','Address2'].map((String value) {
                  return new DropdownMenuItem<String>(
                  // value: '12:00-2:00PM',
                  child: new Text(value),
              );
            }).toList(),
                onChanged: (_) {},
              ),
            ),
            Divider(color: Colors.orangeAccent,),
            ListTile(
              leading: 
                  Container(constraints: BoxConstraints(maxWidth: 96),
                  child: Text("Delivering between: ",softWrap: true,)),
                  trailing:  DropdownButton<String>(
                  hint: Text("5 A.M-7 A.M"),
                  items: <String>['12:00-2:00 PM', '2:00-4:00 PM', '4:00-6:00 PM', '6:00-8:00 PM','8:00-10:00 PM','10:00-12:00 PM','12:00-2:00 AM', '2:00-4:00 AM', '4:00-6:00 AM', '6:00-8:00 AM','8:00-10:00 AM','10:00-12:00 AM'].map((String value) {
                  return new DropdownMenuItem<String>(
                  value: '12:00-2:00PM',
                  child: new Text(value),
              );
            }).toList(),
                onChanged: (_) {},
              ),
                                
            ),
            Padding(
              
              padding: EdgeInsets.only(left: 0,right: 0),
              child: Container(
                decoration: BoxDecoration(
     
                  borderRadius: BorderRadius.all( Radius.circular(24.0),),
                  
                  color: Colors.orange.withOpacity(0.8),
                ),
                margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                
                
                // color: Colors.orange.withOpacity(0.8),
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
                    ),
                  
                  ],
                  
                ),

              ),
              
            ),
          
              
              Container(
                padding: EdgeInsets.only(left:24.0,top:10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                
                                child: RaisedButton(

                         color: Colors.orange,

                          child: Text(
                            "Check out",
                            style: TextStyle(color:Colors.white),
                          ),
                          onPressed: (){},
                        ),
                        
                ),
              ),
              
          ],
        ),
      ),

    
  );


}
