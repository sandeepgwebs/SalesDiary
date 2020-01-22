import 'package:flutter/material.dart';

import 'screens/add_item.dart';
import 'screens/create_order.dart';
import 'screens/daily_order.dart';
import 'screens/history_view.dart';
import 'screens/home.dart';
import 'screens/login_page.dart';
import 'screens/order_history.dart';
import 'screens/orders.dart';
import 'screens/purchase_history.dart';
import 'screens/purchase_orders.dart';
import 'screens/signup_page.dart';
import 'screens/app_drawer.dart';
import 'screens/stock_list.dart';
import 'screens/stock_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        //primaryColor: Color(0xFFebe8a4),
        primaryColor: Color(0xFF609f38),
        // home page card color
        accentColor: Color(0xFFffffff),
        //accentColor: Color(0xFFe8e8e8),
        //home page icon color
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        //canvasColor: Colors.red,
        brightness: Brightness.light,
        fontFamily: 'Lato',
        textTheme: TextTheme(
          //home page headline
          headline: TextStyle(fontSize: 18.0, fontWeight:FontWeight.bold, fontStyle: FontStyle.normal,color: Color(0xFF609f38)),
          //create order button
          title: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal,fontWeight:FontWeight.bold,fontFamily: 'Lato',color: Colors.white),
          //home page subtitle
          subtitle: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,fontFamily: 'Lato',color: Color(0xFF969799)),
          //home page font
          body1: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.black),
          //input colors
          subhead: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal,fontWeight: FontWeight.normal,color: Colors.black),
            //color: Color(0xFF969799)
          //Button colors
          button: TextStyle(fontSize: 14,color: Colors.white),
          //discount color history page singup
          body2: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Color(0xFF609f38)),
          overline: TextStyle(color:Color(0xFFe8e8e8)),
          caption: TextStyle(fontSize: 12),
        ),
      ),
      home: Home(),
      routes: {
        AppDrawer.routeName:(ctx) => AppDrawer(),
        Home.routeName:(ctx) => Home(),
        PurchaseOrders.routeName:(ctx) => PurchaseOrders(),
        PurchaseHistory.routeName:(ctx) => PurchaseHistory(),
        HistoryView.routeName:(ctx) => HistoryView(),
        AddItem.routeName:(ctx) => AddItem(),
        DailyOrder.routeName:(ctx) => DailyOrder(),
        Order.routeName:(ctx) => Order(),
        OrderHistory.routeName:(ctx) => OrderHistory(),
        CreateOrders.routeName:(ctx) => CreateOrders(),
        StockPage.routeName:(ctx) => StockPage(),
        StockList.routeName:(ctx) => StockList(),
        Login.routeName:(ctx) => Login(),
        SignUp.routeName:(ctx) => SignUp(),
      },
    );
  }
}
