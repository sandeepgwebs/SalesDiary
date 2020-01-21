import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';
import 'package:onlinemandi_seller/screens/create_order.dart';

import 'daily_order.dart';
import 'login_page.dart';
import 'order_history.dart';
import 'orders.dart';
import 'purchase_history.dart';
import 'purchase_orders.dart';

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            flexibleSpace: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                /*gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0,6],
                  colors: [
                    Color.fromRGBO (204, 255, 208,1).withOpacity(0.9),
                    Color.fromRGBO(204, 255, 255,1).withOpacity(0.9),
                  ],
                ),*/
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(0),
                  bottomRight: const Radius.circular(0),
                ),
              ),
              child: Container(
                //height: MediaQuery.of(context).size.height / 2.5,
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'images/online-logo1.png',
                  width: 140,
                  height: 140,
                ),
                /*child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Icon(MyFlutterApp.rupee,size: 25,color:Color(0xFF609f38)),
                    Text('Online Mandi',style: TextStyle(color:Color(0xFFF0EdE5),fontSize: 35,fontWeight: FontWeight.bold,
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
                ),*/
              ),
            ),
            title: Text('',style: Theme.of(context).textTheme.headline,),
            centerTitle: true,
            backgroundColor: Color(0xFFF0EdE5),
            //backgroundColor:Colors.white,
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                //child: Icon(MyFlutterApp.cog,size: 22,),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            /*gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0,6],
                  colors: [
                    Color.fromRGBO (204, 255, 208,1).withOpacity(0.9),
                    Color.fromRGBO(204, 255, 255,1).withOpacity(0.9),
                  ],
                ),*/
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(10),
              bottomRight: const Radius.circular(10),
            ),
          ),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            padding: const EdgeInsets.all(10.0),
            mainAxisSpacing: 9.2,
            crossAxisSpacing: 9.2,
            children: <Widget>[
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
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
                      Text("(20/01/2020)",style: TextStyle(color:Color(0xFF609f38),fontSize: 12,fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                onTap: () => Navigator.of(context).pushNamed(PurchaseOrders.routeName),
              ),
              InkWell(
                child: Card(
                  elevation: 9,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
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
                      topLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
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
                      topLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
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
                      topLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
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
                      topLeft: const Radius.circular(12),
                      bottomRight: const Radius.circular(12),
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