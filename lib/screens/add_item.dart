import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';

class AddItem extends StatefulWidget{
  @override
  AddItemState createState() => AddItemState();
  static const routeName = '/additem';
}
class AddItemState extends State<AddItem>{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
          ),
          title: Text('Add New Item',style: Theme.of(context).textTheme.headline,),
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
        //drawer: HomeDrawer(),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                //padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            //width: 1.2,
                            color: Colors.grey,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(8,8,0,8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Item Name',style: TextStyle(fontSize: 15,color: Color(0xFF969799))),
                            Icon(Icons.arrow_drop_down,size: 30,color: Color(0xFF969799))
                          ],
                        ),
                      ),
                      onTap: ()=> _customersdetail(context),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 0,right: 4,top: 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  //width: 1.2,
                                  color: Colors.grey,
                                )
                            ),
                            padding: EdgeInsets.fromLTRB(8,3,5,3),
                            width: 20,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xFF969799),
                                  size: 35,
                                ),
                                items: [
                                  DropdownMenuItem<String>(
                                    value: "1",
                                    child: Text(
                                      "Select Unit",style: TextStyle(fontSize: 15,color: Color(0xFF969799)),
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
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 4,right: 0,top: 0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                labelText: "Item Qty",
                                fillColor: Colors.white,
                                labelStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15.0
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(2),
                                  borderSide: new BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                                ),
                                errorBorder: InputBorder.none,
                                hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                                contentPadding: EdgeInsets.only(left: 10, bottom: 15, top: 15, right: 0),
                              ),style: (TextStyle(fontSize: 14)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Item Price",
                        labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 15.0
                        ),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(2),
                          borderSide: new BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(2)),
                        ),
                        errorBorder: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 15,color: Color(0xFF969799)),
                        contentPadding: EdgeInsets.only(left: 10, bottom: 15, top: 15, right: 0),
                      ),style: (TextStyle(fontSize: 14)),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF0EdE5),
                  border: Border(
                    bottom: BorderSide(
                        width: 5,
                        color: Color(0xFF609f38)
                    ),
                  ),
                  //borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('SAVE',style: TextStyle(color: Color(0xFF609f38),fontWeight: FontWeight.bold,fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
                          Text('Select Items',style: Theme.of(context).textTheme.body1),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 30,
                              //width: MediaQuery.of(context).size.width / 3,
                              //padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color:  Color(0xFF609f38),
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
                          hintText: 'Search Items',
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
        Row(
          children: <Widget>[
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color:  Color(0xFF609f38),
                borderRadius: BorderRadius.circular(50),
              ),
              child: InkWell(
                child:  Icon(Icons.add,size: 20,color: Colors.white,),
                //onTap: ()=> _delete(context),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              child: Text('Add New item',style: Theme.of(context).textTheme.body1),
            ),
          ],
        ),
        Divider(),
        Padding(padding: EdgeInsets.all(10),
          child: Text('Potato',style: Theme.of(context).textTheme.body1),
        ),
        Divider(),
        Padding(padding: EdgeInsets.all(10),
          child: Text('Broccli',style: Theme.of(context).textTheme.body1),
        ),
        Divider(),
      ],
    );
  }
}