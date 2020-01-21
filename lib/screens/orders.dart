import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';

import 'add_item.dart';
import 'create_order.dart';

class Order extends StatefulWidget{
  @override
  OrderState createState() => OrderState();
  static const routeName = '/Order';
}

class OrderState extends State<Order>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
          ),
          title: Text('Orders',style: Theme.of(context).textTheme.headline,),
          leading: InkWell(
            child: Icon(Icons.arrow_back,color: Color(0xFF609f38)),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFF0EdE5),
          //backgroundColor:Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 10,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              //child: Icon(MyFlutterApp.cog,size: 22,),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xFF609f38),
                padding: EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        //Text('Total: ',style: Theme.of(context).textTheme.body1),
                        //Icon(MyFlutterApp.rupee,size: 16,color: Colors.white),
                        //Text(': 7500',style: Theme.of(context).textTheme.title),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Total Items : 5',style: Theme.of(context).textTheme.title),
                      ],
                    ),
                  ],
                ),
              ),
              Table(
                //border: TableBorder.all(color: Colors.grey),
                border: TableBorder(
                  horizontalInside: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                children: [
                  TableRow( children: [
                    Container(
                      color: Color(0xFFF0EdE5),
                      padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: Center(
                        child: Text("Item",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFe8e8e8),
                      padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: Center(
                        child: Text("Qty",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFF0EdE5),
                      padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: Center(
                        child:Text("Price",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                  ]),
                ],
              ),
              Container(
                color: Colors.grey,
                height: 1,
              ),
              Expanded(child: _tablecoontent(),),
              Card(
                color: Color(0xFFF0EdE5),
                margin: EdgeInsets.all(5),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Customer Name : ',style: Theme.of(context).textTheme.body1),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 0,right: 5),
                                child: Icon(Icons.person,size: 15,color: Color(0xFF609f38)),
                              ),
                              Text('Johan Singh',style: Theme.of(context).textTheme.body2),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Phone No : ',style: Theme.of(context).textTheme.body1),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 0,right: 5),
                                child: Icon(Icons.phone,size: 15,color: Color(0xFF609f38)),
                              ),
                              Text('6253514956',style: Theme.of(context).textTheme.body2),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Sub Total : ',style: Theme.of(context).textTheme.body1),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 2),
                                child: Icon(MyFlutterApp.rupee,size: 14,color: Color(0xFF609f38)),
                              ),
                              Text('350.00 ',style: Theme.of(context).textTheme.body2),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Discount : ',style: Theme.of(context).textTheme.body2),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 2),
                                child: Icon(MyFlutterApp.rupee,size: 15,color: Color(0xFF609f38)),
                              ),
                              Text('50.00 ',style: Theme.of(context).textTheme.body2),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Total : ',style: Theme.of(context).textTheme.body1),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFF609f38),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 2),
                                  child: Icon(MyFlutterApp.rupee,size: 14,color: Colors.white),
                                ),
                                Text('300.00 ',style: Theme.of(context).textTheme.title),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _tablecoontent(){
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
              )
          ),
          child: Table(
            //border: TableBorder.all(color: Colors.grey),
            border: TableBorder(
              horizontalInside: BorderSide(
                color: Colors.grey,
                style: BorderStyle.solid,
                width: 1.0,
              ),
              /*verticalInside: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),*/
            ),
            children: [
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,8,2,4),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,8,2,8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("2 kg",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,8,2,8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      Text("70",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,8,2,4),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,8,2,8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("2 kg",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,8,2,8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      Text("70",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,8,2,4),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,8,2,8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("2 kg",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,8,2,8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      Text("70",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}