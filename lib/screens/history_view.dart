import 'dart:async';
import 'package:flutter/material.dart';
import '../presentation/my_flutter_app_icons.dart';

class HistoryView extends StatefulWidget {
  @override
  HistoryViewState createState() => HistoryViewState();
  static const routeName = '/historyview';
}
class HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color(0xFFad102e),
        appBar: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
          ),
          title: Text('Purchase Order Detail',style: Theme.of(context).textTheme.headline,),
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
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xFF609f38),
                padding: EdgeInsets.all(8),
                //margin: EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(0)),
                        Text('Total items: 10',style: Theme.of(context).textTheme.title),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(MyFlutterApp.calendar,size: 18,color:Colors.white),
                        Padding(padding: EdgeInsets.all(5)),
                        Text('28/12/2019',style: Theme.of(context).textTheme.title),
                      ],
                    ),
                  ],
                ),
              ),
              //Padding(padding: EdgeInsets.all(10)),
              Table(
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
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child: Text("Item",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFdddddd),
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child: Text("Qty",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFF0EdE5),
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child:Text("Price",style: Theme.of(context).textTheme.body1),
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
               Expanded(
                 child: _allList(context),
               ),
             /* Container(
                padding:(EdgeInsets.all(15)),
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('User Name :',style: Theme.of(context).textTheme.body1),
                                Text('Johan Singh',style: Theme.of(context).textTheme.body2),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Phone No :',style: Theme.of(context).textTheme.body1),
                                Text('6253518695',style: Theme.of(context).textTheme.body2),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 12,
          child: Container(
            //margin: EdgeInsets.all(2),
            height: 55,
            color: Color(0xFFF0EdE5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Icon(MyFlutterApp.whatsapp,color: Color(0xFF198C76),size: 22),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Total Amount:',style: TextStyle(color: Color(0xFF609f38),fontWeight: FontWeight.bold,fontSize: 18,fontFamily: 'Lato')),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(MyFlutterApp.rupee,size: 25,color:Color(0xFF609f38)),
                    Text('500',style: TextStyle(color:Color(0xFF609f38),fontSize: 25,fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3.0, 3.0),
                          blurRadius: 8.0,
                          //color: Color.fromARGB(255, 0, 0, 0),
                          color: Color(0xFF609f38),
                        ),
                      ],
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _allList(context){
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Table(
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
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
                TableRow( children: [
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(4,8,2,8),
                    child: Center(
                      child: Text("Soyabean oil",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  Container(
                    //color: Color(0xFFdddddd),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Center(
                      child: Text("30kg",style: Theme.of(context).textTheme.subhead),
                    ),
                  ),
                  /*Container(
                        color: Color(0xFFF0EdE5),
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
                              hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                              //hintText: '09/01/2020',
                              fillColor: Colors.white,
                              suffixIcon: Icon(MyFlutterApp.rupee,size: 20,color: Colors.black),
                              //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                              contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                            ),
                          ),
                        ),
                      ),*/
                  Container(
                    //color: Color(0xFFF0EdE5),
                    padding: EdgeInsets.fromLTRB(2,8,2,8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 4),
                          child: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        ),
                        Text("1200",style: Theme.of(context).textTheme.subhead),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}