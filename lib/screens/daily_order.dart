import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';

import 'add_item.dart';

class DailyOrder extends StatefulWidget{
  @override
  DailyOrderState createState() => DailyOrderState();
  static const routeName = '/dailyorder';
}

class DailyOrderState extends State<DailyOrder>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
          ),
          title: Text('Daily Rates',style: Theme.of(context).textTheme.headline,),
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
                        Text('Total Items : 25',style: Theme.of(context).textTheme.title),
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
                      color: Color(0xFFe8e8e8),
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child: Text("Days",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFF0EdE5),
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child: Text("Item",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFe8e8e8),
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child: Text("Amount",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFF0EdE5),
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child:Text("Sell Price",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                  ],
                  ),
                  ],
              ),
              Container(
                color: Colors.grey,
                height: 1,
              ),
              Expanded(child: _ratelist()),
            ],
          ),
        ),
        /*floatingActionButton: FloatingActionButton(
          child: Container(
            child: Icon(Icons.add,size: 25,color: Colors.white),
          ),
          backgroundColor: Color(0xFF609f38),
          elevation: 0.9,
          onPressed: () => Navigator.of(context).pushNamed(AddItem.routeName),
        ),*/
      ),
    );
  }
  Widget _ratelist() {
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
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("1",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("2",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("1",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("2",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("1",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("2",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("1",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("2",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("1",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("2",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("1",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
              ]),
              TableRow( children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Center(
                    child: Text("2",style: Theme.of(context).textTheme.body1),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.fromLTRB(4,10,2,10),
                  child: Center(
                    child: Text("Broccli",style: Theme.of(context).textTheme.subhead),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,10,2,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4,right: 15),
                        child : Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("20",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  //padding: EdgeInsets.fromLTRB(2,5,2,5),
                  child: Center(
                    //child:Text("3000",style: Theme.of(context).textTheme.subhead),
                    child: TextFormField(
                      cursorColor: Color(0xFF198C76),
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        errorBorder: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 13,color: Colors.black),
                        hintText: '45',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                        contentPadding: EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
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