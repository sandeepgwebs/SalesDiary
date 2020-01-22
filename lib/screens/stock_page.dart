import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'history_view.dart';
import 'orders.dart';
import 'stock_list.dart';

class StockPage extends StatefulWidget{
  @override
  StockPageState createState() => StockPageState();
  static const routeName='stockpage';
}

class StockPageState extends State<StockPage>{

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
          ),
          title: Text('Stock History',style: Theme.of(context).textTheme.headline,),
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
        ),
        //drawer: HomeDrawer(),
        body: Container(
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
                        Text('Total Orders : 25',style: Theme.of(context).textTheme.title),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: _orderHistory(),),
            ],
          ),
        ),
      ),
    );
  }
  Widget _orderHistory(){
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(4)),
        InkWell(
          child: Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Color(0xFFF0EdE5),
                border: Border(
                    bottom: BorderSide(
                      width: 4,
                      color: Color(0xFF609f38),
                    )
                )
            ),
            child: ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text('# 1',style: Theme.of(context).textTheme.body1),
              ),
              title: Text('Date: 20/01/2020',style: Theme.of(context).textTheme.body1),
              trailing: Text('Rs: 1800',style: Theme.of(context).textTheme.body1),
            ),
          ),
          onTap: () => Navigator.of(context).pushNamed(StockList.routeName),
        ),
      ],
    );
  }
}