import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemandi_seller/screens/login_page.dart';
import '../presentation/my_flutter_app_icons.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
  static const routeName = '/signup';
}
class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color(0xFFad102e),
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            //color: Colors.black12,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0,9],
              colors: [
                //Color.fromRGBO(204, 255, 255,1).withOpacity(0.9),
                Color.fromRGBO (204, 255, 208,1).withOpacity(0.9),
                Color.fromRGBO(255, 255, 255,9).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(10),
              bottomRight: const Radius.circular(10),
            ),
          ),
          child: ListView(
            children: <Widget>[
              Container(
                //padding: EdgeInsets.all(40),
                height: MediaQuery.of(context).size.height / 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/online-logo.png',
                    width: 80,
                    height: 80,
                  ),
                  //Icon(Icons.library_books,size: 25,color:Color(0xFFF0EdE5)),
                  Text('Sales Diary',style: TextStyle(color:Color(0xFF609f38),fontSize: 22,letterSpacing:1.2,fontWeight: FontWeight.bold,fontFamily: 'LobsterTwo',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 6.0,
                        //color: Color.fromARGB(255, 0, 0, 0),
                        color: Colors.black38,
                      ),
                    ],
                  )),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 15,right: 10),
                    child: Icon(Icons.person,size: 24,color:Color(0xFF609f38),),
                  ),
                  Expanded(child: TextFormField(
                    decoration: new InputDecoration(
                      labelText: "User Name",
                      labelStyle: TextStyle(
                        color: Color(0xFF609f38),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 3,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                      //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                      //prefixIcon: Icon(Icons.person,size: 22,color: Colors.black),
                      contentPadding: EdgeInsets.only(left:5, bottom: 5, top: 0, right: 0),
                    ),style: (TextStyle(fontSize: 12)),
                  ),),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,right: 10),
                    child: Icon(Icons.email,size: 24,color: Color(0xFF609f38),),
                  ),
                  Expanded(child: TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Color(0xFF609f38),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 3,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                      //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                      //prefixIcon: Icon(Icons.person,size: 22,color: Colors.black),
                      contentPadding: EdgeInsets.only(left:5, bottom: 5, top: 0, right: 0),
                    ),style: (TextStyle(fontSize: 12)),
                  ),),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,right: 10),
                    child: Icon(Icons.vpn_key,size: 24,color: Color(0xFF609f38),),
                  ),
                  Expanded(child: TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Color(0xFF609f38),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                      //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                      //prefixIcon: Icon(Icons.vpn_key,size: 22,color: Colors.black),
                      contentPadding: EdgeInsets.only(left:5, bottom: 5, top: 0, right: 0),
                    ),style: (TextStyle(fontSize: 12)),
                  ),),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,right: 10),
                    child: Icon(Icons.vpn_key,size: 24,color: Color(0xFF609f38),),
                  ),
                  Expanded(child: TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Re-enter Password",
                      labelStyle: TextStyle(
                        color: Color(0xFF609f38),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      fillColor: Colors.white,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF609f38),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 14,color: Color(0xFF969799)),
                      //suffixIcon: Icon(MyFlutterApp.rupee,size: 15,color: Colors.black),
                      //prefixIcon: Icon(Icons.vpn_key,size: 22,color: Colors.black),
                      contentPadding: EdgeInsets.only(left:5, bottom: 5, top: 0, right: 0),
                    ),style: (TextStyle(fontSize: 12)),
                  ),),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width/ 1.2,
                    //margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF609f38),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: MaterialButton(
                      elevation: 10.0,
                      child: Text('Register',style: TextStyle(color: Color(0xFF609f38),fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'Lato')),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      child: Text('LogIn',style: Theme.of(context).textTheme.body2),
                      onTap: ()=> Navigator.of(context).pushNamed(Login.routeName),
                    ),
                    //Text('Forgot Password ?',style: Theme.of(context).textTheme.body2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
