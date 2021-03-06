import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(10,1,10,1),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios, color: Colors.pink,),
                        SizedBox(width: 5,),
                        Text("Back",style: TextStyle(color: Colors.pink,fontSize: 12),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 90,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Settings",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Change Password"),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Biometric Settings"),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
