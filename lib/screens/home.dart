import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';
import 'package:onlinemandi_seller/screens/create_order.dart';
import 'package:onlinemandi_seller/screens/app_drawer.dart';

import 'daily_order.dart';
import 'login_page.dart';
import 'order_history.dart';
import 'orders.dart';
import 'purchase_history.dart';
import 'purchase_orders.dart';
import 'stock_page.dart';

class Home extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
  static const routeName = '/home';
}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: AppBar(
            flexibleSpace: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                /*gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0,6],
                  colors: [
                    //Color.fromRGBO(204, 255, 255,1).withOpacity(0.9),
                    Color.fromRGBO(255, 255, 255,9).withOpacity(0.9),
                    Color.fromRGBO (209, 255, 208,1).withOpacity(0.9),

                  ],
                ),*/
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(100),
                  bottomRight: const Radius.circular(0),
                ),
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/online-logo.png',
                      width: 80,
                      height: 80,
                    ),
                    //Icon(Icons.library_books,size: 25,color:Color(0xFFF0EdE5)),
                    Text('Sales Diary',style: TextStyle(color:Colors.white,fontSize: 22,letterSpacing:1.2,fontWeight: FontWeight.bold,fontFamily: 'LobsterTwo',
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(4.0, 4.0),
                          blurRadius: 6.0,
                          //color: Color.fromARGB(255, 0, 0, 0),
                          color: Colors.black45,
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ),
            title: Text('',style: Theme.of(context).textTheme.headline,),
            centerTitle: true,
            //backgroundColor: Theme.of(context).primaryColor,
            backgroundColor:Colors.white,
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.more_vert,size: 22,),
              ),
            ],
          ),
        ),
        drawer: AppDrawer(),
        body: Container(
          padding: EdgeInsets.only(top: 30,left: 10,right: 20),
          margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 0),
          decoration: BoxDecoration(
            //color: Color(0xFFF0EdE5),
            color: Colors.white,
            borderRadius: BorderRadius.only(
              //topLeft: const Radius.circular(100),
              topRight: const Radius.circular(100),
              //bottomRight: const Radius.circular(100),
            ),
          ),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            padding: const EdgeInsets.all(10.0),
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            children: <Widget>[
              InkWell(
                child: Container(
                  child: Card(
                    elevation: 9,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20),
                        topRight: const Radius.circular(20),
                        bottomLeft: const Radius.circular(20),
                      ),
                    ),
                    color: Theme.of(context).accentColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.today,color: Color(0xFF609f38),size: 30),
                        Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                        Text("Purchase Order",style: Theme.of(context).textTheme.body1),
                        Padding(padding: EdgeInsets.only(top: 2,bottom: 2)),
                        Text("(20/01/2020)",style: TextStyle(color:Color(0xFF609f38),fontSize: 10,fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(PurchaseOrders.routeName),
              ),
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomRight: const Radius.circular(20),
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.shopping_cart,color: Color(0xFF609f38),size: 30),
                      Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                      Text('Purchase History',style: Theme.of(context).textTheme.body1),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(PurchaseHistory.routeName),
              ),
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      bottomLeft: const Radius.circular(20),
                      bottomRight: const Radius.circular(20),
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add_shopping_cart,color: Color(0xFF609f38),size: 30),
                      Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                      Text('Create Orders',style: Theme.of(context).textTheme.body1),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(CreateOrders.routeName),
              ),
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomRight: const Radius.circular(20),
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.access_time,color: Color(0xFF609f38),size: 30),
                      Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                      Text('Order History',style: Theme.of(context).textTheme.body1),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(OrderHistory.routeName),
              ),
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomLeft: const Radius.circular(20),
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(MyFlutterApp.rupee,color: Color(0xFF609f38),size: 28),
                      Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                      Text("Today's Rates",style: Theme.of(context).textTheme.body1),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(DailyOrder.routeName),
              ),
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomRight: const Radius.circular(20),
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person,color: Color(0xFF609f38),size: 30),
                      Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                      Text('Stock',style: Theme.of(context).textTheme.body1),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(StockPage.routeName),
              ),
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(20),
                      topLeft: const Radius.circular(20),
                      bottomRight: const Radius.circular(20),
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person,color: Color(0xFF609f38),size: 30),
                      Padding(padding: EdgeInsets.only(top: 5,bottom: 5)),
                      Text('Profile',style: Theme.of(context).textTheme.body1),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(Login.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}