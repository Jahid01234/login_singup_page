import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registration_page extends StatelessWidget {
  registration_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffB81736),
                    Color(0xff2B1836),
                  ]
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0,left: 22),
                child: Text('Create Your\nAccount',style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    )
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check,color: Colors.grey),
                            label: Text('Full Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),
                            )
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check,color: Colors.grey),
                            label: Text('Gmail',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),
                            )
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),
                            )
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('Confirm Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color(0xffB81736),
                              ),
                            )
                        ),
                      ),

                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffB81736),
                                Color(0xff2B1836),
                              ]

                          ),
                        ),
                        child: Center(child: Text('SIGN Up',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),

                        ),),

                      ),

                    ],
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 150,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Don't have an account?",style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),),
                    Text("Sign In",style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                )
            ),
          ],
        )
    );
  }
}

