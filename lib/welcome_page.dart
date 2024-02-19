import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login_singup_page/registration_page.dart';

import 'login_page.dart';


class welcome_page extends StatelessWidget {
  welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff2B1836),
            ]
          )
        ),
        child: Column(
          children: [
            Padding(
            padding: const EdgeInsets.only(top: 200.0),//image er posttion j kono postione niya jay (top,left,rigt,bottom)
            child:  Image(image: AssetImage('assets/welcome_logo.png'),height: 80,width: 150,),

        ),

            SizedBox(
              height: 90,
            ),
            Text('Welcome Back',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white
            ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login_page()));
              },
              child: Container(
                height:53 ,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('SIGN IN',style: TextStyle(
                     fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),),

              ),
            ),

            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>registration_page()));
              },
              child: Container(
                height:53 ,
                width: 320,
              
                decoration: BoxDecoration(
                    color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('SIGN UP',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),),
              
              ),
            ),
            Spacer(),
            Text('Login with Social Media',style: TextStyle
              (
                fontSize: 17,
                color: Colors.white,
            ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Logo(Logos.facebook_logo),
                Logo(Logos.instagram),
                Logo(Logos.twitter),
                Logo(Logos.chrome),

              ],

            ),
            SizedBox(
              height: 10,
            )


          ]
        ),
      ),

    );
  }
}
