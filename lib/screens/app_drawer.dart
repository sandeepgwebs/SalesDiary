import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/presentation/my_flutter_app_icons.dart';
import 'package:onlinemandi_seller/screens/home.dart';

class AppDrawer extends StatefulWidget{
  @override
  AppDrawerState createState() => AppDrawerState();
  static const routeName ='/appdrawer';
}

class AppDrawerState extends State<AppDrawer>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: AppBar(
                leading: Icon(Icons.person,size: 30,),
                title: Text('johan Singh',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight:FontWeight.bold,fontFamily: 'Lato')),
                backgroundColor: Color(0xFF609f38),
                //backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.home,color: Color(0xFF609f38),size: 22,),
                title: Text('Home',style: Theme.of(context).textTheme.body1),
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Home.routeName);
              },
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.date_range,color: Color(0xFF609f38),size: 22,),
                title: Text('Purchase Order',style: Theme.of(context).textTheme.body1),
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.shopping_cart,color: Color(0xFF609f38),size: 22,),
                title: Text('Purchase History',style: Theme.of(context).textTheme.body1),
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.add_shopping_cart,color: Color(0xFF609f38),size: 22,),
                title: Text('Create Order',style: Theme.of(context).textTheme.body1),
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.access_time,color: Color(0xFF609f38),size: 22,),
                title: Text('Order History',style: Theme.of(context).textTheme.body1),
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(MyFlutterApp.rupee,color: Color(0xFF609f38),size: 22,),
                title: Text("Today's Rates",style: Theme.of(context).textTheme.body1),
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.person,color: Color(0xFF609f38),size: 22,),
                title: Text("Profile",style: Theme.of(context).textTheme.body1),
                trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
  Widget _pagelist(){
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.menu),
          title: Text('Home'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}