import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget{
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "enter password",
                    labelText: "Password",
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  color:Colors.blue,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18
                    ),
                  ),
                ),
                InkWell(
                  onTap: ,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton?50: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white
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