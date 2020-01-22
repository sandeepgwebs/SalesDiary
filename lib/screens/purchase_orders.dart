import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';

import 'add_item.dart';

class PurchaseOrders extends StatefulWidget{
  @override
  PurchaseOrdersState createState() => PurchaseOrdersState();
  static const routeName = '/purchaseorder';
}

class PurchaseOrdersState extends State<PurchaseOrders>{
  Icon actionIcon = new Icon(Icons.search,size: 22,color: Color(0xFF609f38));
  Widget appBarTitle = new Text("Purchase Orders");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
          ),
          title: Text('Purchase Orders',style: Theme.of(context).textTheme.headline,),
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
            new IconButton(icon: actionIcon,onPressed:(){
              setState(() {
                if ( this.actionIcon.icon == Icons.search){
                  this.actionIcon = new Icon(Icons.close,size: 22,color: Color(0xFF609f38));
                  this.appBarTitle = new  Expanded(child: TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search,size: 22,color: Color(0xFF609f38)),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)
                    ),)
                  );}
                else {
                  this.actionIcon = new Icon(Icons.search,size: 22,color: Color(0xFF609f38));
                  this.appBarTitle = new Text("Purchase Orders");
                }
              });
            }),
            /*InkWell(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Icon(Icons.search,size: 22,color: Color(0xFF609f38)),
              ),
              onTap: () => _searchPressed(),
            ),*/
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
                        Text('Total: ',style: Theme.of(context).textTheme.title),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Icon(MyFlutterApp.rupee,size: 14,color: Colors.white),
                        ),
                        Text('7500',style: Theme.of(context).textTheme.title),
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
                  /*verticalInside: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),*/
                ),
                children: [
                  TableRow( children: [
                    /*Container(
                          color: Color(0xFFe8e8e8),
                          padding: EdgeInsets.only(top: 10,bottom: 10),
                          child: Center(
                            child: Text("DATE",style: Theme.of(context).textTheme.body1),
                          ),
                        ),*/
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
                    Container(
                      color: Color(0xFFdddddd),
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Center(
                        child:Text("Action",style: Theme.of(context).textTheme.body1),
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
              Expanded(child: _allList(),),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Container(
            child: Icon(Icons.add,size: 25,color: Colors.white),
          ),
          backgroundColor: Color(0xFF609f38),
          elevation: 0.9,
          onPressed: () => Navigator.of(context).pushNamed(AddItem.routeName),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 10,
          child: Container(
            color: Color(0xFFF0EdE5),
            height: 50,
            child: Center(
              child: Text('Complete',style: Theme.of(context).textTheme.headline),
            ),
          ),
        ),
      ),
    );
  }

  Widget _allList(){
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
                    Container(
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Icon(Icons.delete,size: 20,color: Colors.red,),
                        ),
                        onTap: ()=> _delete(context),
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

  _delete(BuildContext context) async {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          /* borderRadius: BorderRadius.only(
              topRight:  const  Radius.circular(30.0),
              bottomLeft:  const  Radius.circular(30.0),
            ),*/
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: EdgeInsets.all(20.0),
        titlePadding: EdgeInsets.all(20.0),
        // backgroundColor: Color(0xFF609f38),
        title: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                /*gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0,6],
                    colors: [
                      Color.fromRGBO(0, 153, 255,9).withOpacity(0.9),
                      Color.fromRGBO (0, 255, 255,9).withOpacity(0.9),
                    ],
                  ),*/
                color: Color(0xFF609f38),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Icon(Icons.delete,size: 32,color: Colors.white),
            ),
            Text('Are You Sure Delete Transaction',style: TextStyle(color: Color(0xFF609f38),fontWeight: FontWeight.w500,fontSize: 16,fontFamily: 'Lato',
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 6.0,
                  //color: Color.fromARGB(255, 0, 0, 0),
                  color: Color(0xFF609f38),
                ),
              ],
            )),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      //width: MediaQuery.of(context).size.width / 3,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Cancel',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontFamily:'Lato',fontSize: 14)),
                    ),
                    onTap: ()=> Navigator.of(context).pop(),
                  ),
                  InkWell(
                    child: Container(
                      //width: MediaQuery.of(context).size.width / 3,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        /*gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0,6],
                            colors: [
                              Color.fromRGBO(0, 153, 255,9).withOpacity(0.9),
                              Color.fromRGBO (0, 255, 255,9).withOpacity(0.9),
                            ],
                          ),*/
                        color: Color(0xFF609f38),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('OK',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontFamily:'Lato',fontSize: 14)),
                    ),
                    onTap: ()=> Navigator.of(context).pop(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  _customersdetail(BuildContext context) async {
    return showDialog(context: context,builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        //contentPadding: EdgeInsets.all(8.0),
        //titlePadding: EdgeInsets.all(0.0),
        //backgroundColor: Color(0xFF609f38),
        child: Container(
          height: 350,
          //padding: EdgeInsets.all(5),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFf7f4f4),
                    borderRadius: BorderRadius.only(
                      topRight:  const  Radius.circular(5.0),
                      topLeft:  const  Radius.circular(5.0),
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Add New Customers',style: Theme.of(context).textTheme.body1),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 30,
                              //width: MediaQuery.of(context).size.width / 3,
                              //padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0,6],
                                  colors: [
                                    Color.fromRGBO(0, 153, 255,9).withOpacity(0.9),
                                    Color.fromRGBO (0, 255, 255,9).withOpacity(0.9),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.close,size: 20,color: Colors.white),
                            ),
                            onTap: ()=> Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      TextFormField(
                        cursorColor: Color(0xFF198C76),
                        keyboardType: TextInputType.multiline,
                        decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                          errorBorder: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                          ),
                          disabledBorder: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 15),
                          hintText: 'Search User',
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search,size: 20,color: Colors.black),
                          //prefixIcon: Icon(Icons.person,size: 30,color: Colors.black),
                          contentPadding: EdgeInsets.only(left: 10, bottom: 0, top: 15, right: 0),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8,2,8,4),
                    child: _customerslist(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _customerslist() {
    return ListView(
      children: <Widget>[
        Divider(),
        ListTile(
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0,6],
                colors: [
                  Color.fromRGBO(0, 153, 255,9).withOpacity(0.9),
                  Color.fromRGBO (0, 255, 255,9).withOpacity(0.9),
                ],
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              child:  Icon(MyFlutterApp.user_add,size: 20,color: Colors.white,),
              onTap: ()=> _delete(context),
            ),
          ),
          title: Text('Add New Customers',style: Theme.of(context).textTheme.body1),
        ),
        Divider(),
        ListTile(
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0,6],
                colors: [
                  Color.fromRGBO(0, 153, 255,9).withOpacity(0.9),
                  Color.fromRGBO (0, 255, 255,9).withOpacity(0.9),
                ],
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              child:  Icon(Icons.person,size: 20,color: Colors.white,),
              onTap: ()=> _delete(context),
            ),
          ),
          title: Text('Johan',style: Theme.of(context).textTheme.body1),
        ),
        Divider(),
        ListTile(
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0,6],
                colors: [
                  Color.fromRGBO(0, 153, 255,9).withOpacity(0.9),
                  Color.fromRGBO (0, 255, 255,9).withOpacity(0.9),
                ],
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              child:  Icon(Icons.person,size: 20,color: Colors.white,),
              onTap: ()=> _delete(context),
            ),
          ),
          title: Text('Rohan',style: Theme.of(context).textTheme.body1),
        ),
        Divider(),
        ListTile(
          leading: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0,6],
                colors: [
                  Color.fromRGBO(0, 153, 255,9).withOpacity(0.9),
                  Color.fromRGBO (0, 255, 255,9).withOpacity(0.9),
                ],
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              child:  Icon(Icons.person,size: 20,color: Colors.white,),
              onTap: ()=> _delete(context),
            ),
          ),
          title: Text('Mohan',style: Theme.of(context).textTheme.body1),
        ),
      ],
    );
  }

}