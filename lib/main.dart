import 'dart:math';

import 'package:card/Item_count.dart';
import 'package:flutter/material.dart';
import 'package:animated_dialog_box/animated_dialog_box.dart';

import 'my_behaviour.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        
        primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(title: 'Flutter Bottom sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          _settingModalBottomSheet(context);
        },
        child: new Icon(Icons.add),
      ),
    );
  }
}


void _settingModalBottomSheet(context){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc){
          return CartSheet();
      }
    );
}

class CartSheet extends StatefulWidget {
  const CartSheet({
    Key key,
  }) : super(key: key);

  @override
  _CartSheetState createState() => _CartSheetState();
}

class _CartSheetState extends State<CartSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
          child: Container(
            height:650.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              // height: MediaQuery.of(context).size.height*0.10,
                color: Colors.orange,
                child:             new ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  dense: true,
                leading: Icon(Icons.arrow_back,color: Colors.white,),
                title: new Text('Delivery At',style: TextStyle(color: Colors.white,)),
                subtitle: Text("Exotica Eastern Court, Block A, Flat No, 703",style:TextStyle(color: Colors.white70),maxLines: 1,overflow: TextOverflow.ellipsis,),
                onTap: () => {Navigator.of(context).pop()}  ,
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                  // color: Colors.white.withOpacity(0.4),
                  child:Text("Change", style: TextStyle(color: Colors.white),)
                )
              
              ),
               
              ),
             
              SizedBox(
                height: MediaQuery.of(context).size.height*0.72,
                            child: ScrollConfiguration(
                              behavior: MyBehaviour(),
                              child: ListView(
                                physics: ClampingScrollPhysics(),
                  children: <Widget>[
                    ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ), 
                  
                    ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ), ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ), ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ), ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ), ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ), ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ), ListTile(title: Text("Milk"),
                    subtitle: Text("Rs 25"),
                    trailing: ItemCount(),
                    
                    ),
                    ListTile(title: Text("Redeem Coupons",style: TextStyle(color: Colors.green),),
                    subtitle: Text("_ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.red),),
                    trailing: Icon(Icons.card_giftcard),
                    
                    ),
                    
                  ],
                ),
              )
              ),
              Container(
                //  height: MediaQuery.of(context).size.height*0.10,
                decoration:  BoxDecoration(
                    border: Border(top:BorderSide(color: Colors.white70, width: 2)),
                    // borderRadius: BorderRadius.circular(1),
                  ),
                child: ListTile(
                  // contentPadding: EdgeInsets.only(right:0,left:2.0),
                  leading: DropdownButton<String>(
                  // hint: Text("address"),
                    // value: address,
                    items: <String>['Delevery1','Delivery2'].map((String value) {
                    return new DropdownMenuItem<String>(
                    
                    child: new Text(value),
                );
              }).toList(),
                  onChanged: (_) {},
                ),
                title: 
                 RaisedButton(
                   
                      
                       color: Colors.orange,
                        child: 
                        
                        Text("Slots",style: TextStyle(color: Colors.white),),onPressed: (){
                          animated_dialog_box.showRotatedAlert(
                title: Center(child: Text("Choose Slot")), // IF YOU WANT TO ADD
                context: context,
                firstButton: MaterialButton(
                  // FIRST BUTTON IS REQUIRED
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Colors.white,
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                secondButton: MaterialButton(
                  // OPTIONAL BUTTON
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Colors.white,
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                icon: Icon(Icons.timer,color: Colors.red,), // IF YOU WANT TO ADD ICON
                yourWidget: Container(
                  child: 
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text("7:00-8:00 A.M"),
                        onPressed: (){},
                      ),
                      
                    ],
                  )
                ));
                        },
                        ),
                
                trailing: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  child:
                   SizedBox(
                     
                     height: 100.0,
                    
                         child: RaisedButton(
                      
                       color: Colors.orange,
                        child: 
                        
                        Text("Place order",style: TextStyle(color: Colors.white),),onPressed: (){},),
                   )
                   ),
                   )
              )
          ],
        ),
      ),
    );
  }
  
}
