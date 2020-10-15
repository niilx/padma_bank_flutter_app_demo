import 'package:flutter/material.dart';
import 'package:padma_bank/homepage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),

              Container(
                height: 100,
                width: 1000,
                child: Image.asset("assets/logo.png"),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Login to access Fund Transfer, Top Up, Utility Bills, Statement etc",textAlign: TextAlign.center,),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        hintText: "Phone number",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          //  when the TextFormField in unfocused
                        ),
                        focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          //  when the TextFormField in unfocused
                        ),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Password",
                        suffixText:"Forgot?",
                        suffixStyle: TextStyle(color: Colors.black54),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          //  when the TextFormField in unfocused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          //  when the TextFormField in unfocused
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Expanded(flex: 5,child: Container(),),
                  Expanded(
                    flex: 70,
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      color: Colors.pink,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                             builder: (BuildContext context) {
                               return Homepage();
                             }
                        ));
                      },
                      child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                  Expanded(flex: 3,child: Container(),),
                  Expanded(
                    flex: 20,
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      color: Colors.pink,
                      onPressed: (){},
                      child: Icon(Icons.fingerprint,size: 25,color: Colors.white,),
                    ),
                  ),
                  Expanded(flex: 5,child: Container(),),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text("Dont have an account?",textAlign: TextAlign.center,),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                SizedBox(width: 20,),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    color: Colors.pinkAccent.withOpacity(0.1),
                    onPressed: (){},
                    child: Text("Signup",style: TextStyle(fontSize: 20,color: Colors.pink),),
                  ),
                ),
                SizedBox(width: 20,),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
