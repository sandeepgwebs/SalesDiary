import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class CreateOrders extends StatefulWidget{
  @override
  CreateOrdersState createState() => CreateOrdersState();
  static const routeName = '/createorders';
}
class CreateOrdersState extends State<CreateOrders>{
  List<DropdownMenuItem> items = [];
  String selectedValue;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  List<String> _data = ['Sun'];

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
          ),
          title: Text('Create Orders',style: Theme.of(context).textTheme.headline,),
          leading: InkWell(
            child: Icon(Icons.arrow_back,color: Color(0xFF609f38)),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFF0EdE5),
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 10,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              //child: Icon(MyFlutterApp.cog,size: 22,),
            ),
          ],
        ),
        //drawer: HomeDrawer(),
        body: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            children: <Widget>[
              Table(
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
                      color: Color(0xFFdddddd),
                      padding: EdgeInsets.fromLTRB(4,8,2,8),
                      child: Center(
                        child: Text("Item",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFF0EdE5),
                      padding: EdgeInsets.fromLTRB(2,8,2,8),
                      child: Center(
                        child: Text("Unit",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFdddddd),
                      padding: EdgeInsets.fromLTRB(2,8,2,8),
                      child: Center(
                        child: Text("Qty",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                    Container(
                      color: Color(0xFFF0EdE5),
                      padding: EdgeInsets.fromLTRB(2,8,2,8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                          Text("Price",style: Theme.of(context).textTheme.body1),
                        ],
                      ),
                    ),
                    Container(
                      color: Color(0xFFdddddd),
                      padding: EdgeInsets.only(top: 8,bottom: 8),
                      child: Center(
                        child:Text("Action",style: Theme.of(context).textTheme.body1),
                      ),
                    ),
                  ]),
                ],
              ),
              Container(
                color: Colors.grey,
                height: 1,
              ),
              Positioned(
                child: new FloatingActionButton(
                  child: new Icon(Icons.add),
                  onPressed: () {
                    print('FAB tapped!');
                  },
                  backgroundColor: Colors.blueGrey,
                ),
                right: 100.0,
                top: 100,
                //top: appBarHeight - 5.0,
              ),
              Expanded(
                //child: _customerslist(),
                child: ListView(
                  children: <Widget>[
                    Container(
                      height:MediaQuery.of(context).size.height / 2.2,
                      child: AnimatedList(
                        key: _listKey,
                        initialItemCount: _data.length,
                        itemBuilder: (context, index, animation) {
                          return _buildItem(_data[index], animation);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xFFF0EdE5),
                margin: EdgeInsets.all(0),
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(8,10,8,10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0,0,4,5),
                              child: TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Customer Name",
                                  labelStyle: TextStyle(
                                    color: Color(0xFF609f38),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  fillColor: Colors.white,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF609f38),
                                      width: 3,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorBorder: InputBorder.none,
                                  hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                                  contentPadding: EdgeInsets.only(left: 5, bottom: 5, top: 0, right: 0),
                                ),style: (TextStyle(fontSize: 12)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(4,0,0,5),
                              child: TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Phone Number",
                                  labelStyle: TextStyle(
                                    color: Color(0xFF609f38),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  fillColor: Colors.white,
                                  /*border: OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(8),
                                    borderSide: new BorderSide(
                                      color: Color(0xFF609f38),
                                    ),
                                  ),*/
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF609f38),
                                      width: 3,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  ),
                                  errorBorder: InputBorder.none,
                                  //hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                                  contentPadding: EdgeInsets.only(left: 5, bottom: 5, top: 0, right: 0),
                                ),style: (TextStyle(fontSize: 12)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Sub Total : ',style: Theme.of(context).textTheme.body1),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 2),
                                child: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                              ),
                              Text('350.00 ',style: Theme.of(context).textTheme.body1),
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
                              //Text('50.00 ',style: Theme.of(context).textTheme.body2),
                              Container(
                                width: MediaQuery.of(context).size.width / 7,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    //labelText: "Customer Name",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF609f38),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    fillColor: Colors.white,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF609f38),
                                        width: 3,
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    ),
                                    errorBorder: InputBorder.none,
                                    hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                                    contentPadding: EdgeInsets.only(left: 5, bottom: 0, top: 0, right: 0),
                                  ),style: Theme.of(context).textTheme.body1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
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
                          Container(
                            padding: EdgeInsets.fromLTRB(20,10,20,10),
                            decoration: BoxDecoration(
                              color: Color(0xFF609f38),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                            child: Center(
                              child: Text('Create *',style: Theme.of(context).textTheme.title),
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF609f38),
          child: Container(
            child: MaterialButton(
              padding: EdgeInsets.all(0),
              elevation: 0,
              child: Icon(Icons.add,color:Color(0xFFF0EdE5),size: 25),
              onPressed: () {
                _insertSingleItem();
              },
            ),
          ),
          mini: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        bottomNavigationBar: BottomAppBar(
          /*child: Card(
            color: Color(0xFFF0EdE5),
            margin: EdgeInsets.all(0),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(8,10,8,10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0,0,4,5),
                          child: TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Customer Name",
                              labelStyle: TextStyle(
                                color: Color(0xFF609f38),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                              fillColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF609f38),
                                  width: 3,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              errorBorder: InputBorder.none,
                              hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                              contentPadding: EdgeInsets.only(left: 5, bottom: 5, top: 0, right: 0),
                            ),style: (TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4,0,0,5),
                          child: TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                color: Color(0xFF609f38),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(8),
                                    borderSide: new BorderSide(
                                      color: Color(0xFF609f38),
                                    ),
                                  ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF609f38),
                                  width: 3,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              errorBorder: InputBorder.none,
                              //hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                              contentPadding: EdgeInsets.only(left: 5, bottom: 5, top: 0, right: 0),
                            ),style: (TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Sub Total : ',style: Theme.of(context).textTheme.body1),
                      Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 2),
                            child: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                          ),
                          Text('350.00 ',style: Theme.of(context).textTheme.body1),
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
                          //Text('50.00 ',style: Theme.of(context).textTheme.body2),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                //labelText: "Customer Name",
                                labelStyle: TextStyle(
                                  color: Color(0xFF609f38),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: Colors.white,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF609f38),
                                    width: 3,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                errorBorder: InputBorder.none,
                                hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                                contentPadding: EdgeInsets.only(left: 5, bottom: 0, top: 0, right: 0),
                              ),style: Theme.of(context).textTheme.body1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
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
                      Container(
                        padding: EdgeInsets.fromLTRB(20,10,20,10),
                        decoration: BoxDecoration(
                          color: Color(0xFF609f38),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                        child: Center(
                          child: Text('Create *',style: Theme.of(context).textTheme.title),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),*/
        ),
      ),
    );
  }

  Widget _customerslist() {
    return ListView(
      children: <Widget>[
        Table(
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
                padding: EdgeInsets.only(top:0,bottom:0,left: 4,right: 4),
                child: Center(
                  child: _widget(),
                ),
                /*child: Column(
                  children: <Widget>[
                     Center(
                      child: _widget(),
                     ),
                  ],
                ),*/
              ),
              Container(
                //color: Color(0xFFF0EdE5),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 4,right: 0,top: 5),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                          size: 22,
                        ),
                        items: [
                          DropdownMenuItem<String>(
                            value: "1",
                            child: Text(
                              "Unit",style: Theme.of(context).textTheme.subhead,
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "2",
                            child: Text(
                              "kg",style:  Theme.of(context).textTheme.subhead,
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "2",
                            child: Text(
                              "dez",style:  Theme.of(context).textTheme.subhead,
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "2",
                            child: Text(
                              "piece",style:  Theme.of(context).textTheme.subhead,
                            ),
                          ),
                        ],
                        onChanged: (value) {
                        },
                        value: "1",
                        elevation: 16,
                        //style: TextStyle(color: Colors.black, fontSize: 20),
                        isDense: true,
                        //iconSize: 38.0,
                        iconSize: 38.0,
                      ),
                    ),
                  ),
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
                      hintText: '1',
                      fillColor: Colors.white,
                      //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                      //prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.transparent),
                      contentPadding: EdgeInsets.only(left: 20, bottom: 0, top: 14, right: 0),
                    ),style: TextStyle(fontSize: 15,color: Colors.black),
                  ),
                ),
              ),
              Container(
                // color: Color(0xFFdddddd),
                padding: EdgeInsets.fromLTRB(2,15,2,15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                    ),
                    Text("80",style: Theme.of(context).textTheme.subhead),
                  ],
                ),
              ),
            ]),
          ],
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
                    onTap: () {
                      _removeSingleItem();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildItem(String item, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Table(
        border: TableBorder(
            bottom: BorderSide(
              color: Colors.grey,
              style: BorderStyle.solid,
              width: 1.0,
            )
        ),
        children: [
          TableRow(
              children: [
                Container(
                  //color: Color(0xFFF0EdE5),
                  padding: EdgeInsets.only(top:0,bottom:0,left: 4,right: 4),
                  child: Center(
                    child: _widget(),
                  ),
                ),
                Container(
                  //color: Color(0xFFF0EdE5),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 4,right: 0,top: 5),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 22,
                          ),
                          items: [
                            DropdownMenuItem<String>(
                              value: "1",
                              child: Text(
                                "Unit",style: Theme.of(context).textTheme.subhead,
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "2",
                              child: Text(
                                "kg",style:  Theme.of(context).textTheme.subhead,
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "2",
                              child: Text(
                                "dez",style:  Theme.of(context).textTheme.subhead,
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "2",
                              child: Text(
                                "piece",style:  Theme.of(context).textTheme.subhead,
                              ),
                            ),
                          ],
                          onChanged: (value) {
                          },
                          value: "1",
                          elevation: 16,
                          //style: TextStyle(color: Colors.black, fontSize: 20),
                          isDense: true,
                          //iconSize: 38.0,
                          iconSize: 38.0,
                        ),
                      ),
                    ),
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
                        hintText: '1',
                        fillColor: Colors.white,
                        //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                        //prefixIcon: Icon(MyFlutterApp.rupee,size: 14,color: Colors.transparent),
                        contentPadding: EdgeInsets.only(left: 20, bottom: 0, top: 14, right: 0),
                      ),style: TextStyle(fontSize: 15,color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  // color: Color(0xFFdddddd),
                  padding: EdgeInsets.fromLTRB(2,15,2,15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Icon(MyFlutterApp.rupee,size: 14,color: Colors.black),
                      ),
                      Text("80",style: Theme.of(context).textTheme.subhead),
                    ],
                  ),
                ),
                Container(
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Icon(Icons.delete,size: 20,color: Colors.red,),
                    ),
                    onTap: ()=> _delete(context),
                  ),
                ),
              ]),
        ],
      ),
    );
  }

  void _insertSingleItem() {
    String newItem = "Planet";
    int insertIndex = 1;
    _data.insert(insertIndex, newItem);
    _listKey.currentState.insertItem(insertIndex);
  }

  void _removeSingleItem() {
    int removeIndex = 1;
    String removedItem = _data.removeAt(removeIndex);
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      return _buildItem(removedItem, animation);
    };
    _listKey.currentState.removeItem(removeIndex, builder);
  }

  Widget _widget() {
    for(int i=0; i < 2; i++){
      items.add(new DropdownMenuItem<String>(
        value: "1",
        child: Text(
          "Broccli",style: Theme.of(context).textTheme.subhead,
        ),
      ));
    }
    return  DropdownButtonHideUnderline(
      child: SearchableDropdown(
          items: items,
          value: selectedValue,
          hint: new Center(
            child: Text(
              'Broccli',style: Theme.of(context).textTheme.subhead,
            ),
          ),
          searchHint: new Text(
            'Select One',
            style: new TextStyle(
                fontSize: 10
            ),
          ),
          onChanged: (value) {
            print(value);
            setState(() {
              selectedValue = value;
            });
          },
          underline: Container(
            height: 1.0,
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.transparent, width: 0.0))
            ),
          ),
          icon: Icon(Icons.keyboard_arrow_down,size: 0,)
      ),
    );
  }

 /* Widget _widget() {
    for(int i=0; i < 2; i++){
      items.add(new DropdownMenuItem<String>(
        value: "1",
        child: Text(
          "Broccli",style: Theme.of(context).textTheme.subhead,
        ),
      ));
    }
    return  DropdownButtonHideUnderline(
      child: SearchableDropdown(
        items: items,
        value: selectedValue,
        hint: new Center(
          child: Text(
            'Broccli',style: Theme.of(context).textTheme.subhead,
          ),
        ),
        searchHint: new Text(
          'Select One',
          style: new TextStyle(
              fontSize: 10
          ),
        ),
        onChanged: (value) {
          print(value);
          setState(() {
            selectedValue = value;
          });
        },
        underline: Container(
          height: 1.0,
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.transparent, width: 0.0))
          ),
        ),
        icon: Icon(Icons.keyboard_arrow_down,size: 0,)
      ),
    );
  }*/
}