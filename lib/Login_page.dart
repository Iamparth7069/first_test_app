import 'dart:ffi';

import 'package:basic_parth/utilities/roudes.dart';
import 'package:flutter/material.dart';
class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(

        children: [
          SizedBox(
            height: 50.0,
          ),
          Image.asset("assets/images/login.jpg",fit: BoxFit.cover,height:
            100,),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome",style: TextStyle(
          fontSize: 18,fontWeight: FontWeight.bold
    ),),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32 ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter user name",
                    labelText: "Username"
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  // style: TextButton.styleFrom(
                      // minimumSize: Size(100, 50)),
                  // style: TextButton.styleFrom(maximumSize:),
                  onPressed: (){
                        Navigator.pushNamed(context, myrouts.homeRoute);
                  },
                ),
              ],
            ),
          )
        ],
        ),
      ));
  }
}
