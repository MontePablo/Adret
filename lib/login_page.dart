import 'dart:html';

import 'package:adret/utils/my_routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var changeButton=false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Image.asset("../assets/images/login_illust.jpg",
            fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                const Text("Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "enter email",
                    labelText: "Email",
                  ),
                  validator: (value){
                    if(value!.isEmpty) {
                      return "email cannot be empty";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "enter password",
                    labelText: "Password",
                  ),
                  validator: (value){
                    if(value!.isEmpty) {
                      return "password cannot be empty";
                    } else if(value.length<6) {
                      return "password length should be atleast 6";
                    }
                    return null;
                  },
                ),
                // Container(
                //   width: 150,
                //   height: 50,
                //   color:Colors.blue,
                //   alignment: Alignment.center,
                //   // child: Text(
                //   //   "Login",
                //   //   style: TextStyle(
                //   //     color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18
                //   //   ),
                //   // ),
                // ),
                SizedBox(height: 10,),
                InkWell(
                  onTap:() async {
                    setState(()  {
                      changeButton=true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      changeButton=false;
                    });
                  } ,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton?50: 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(changeButton?20:8)
                    ),
                    child:changeButton?Icon(Icons.done,color: Colors.white,):
                    const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}