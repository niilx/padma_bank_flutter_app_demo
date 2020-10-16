import 'package:flutter/material.dart';
import 'package:padma_bank/fundTransfer.dart';
import 'package:padma_bank/mobileRecharge.dart';
import 'package:padma_bank/settings.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: Container(
            padding: EdgeInsets.all(10),
            child: Image.asset("assets/logo.png", fit: BoxFit.fill,)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.menu,color: Colors.black54,),
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.27,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/logo.png", fit: BoxFit.fill,),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.7,
              width: MediaQuery.of(context).size.width,
              color: Colors.purple.withOpacity(0.4),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text("Explore Services",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Services that make your life easy",style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),),
                  SizedBox(height: 30,),
                  Row(

                    children: [

                      Expanded(
                        flex:30,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return FundTransfer();
                                }
                            ));
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Icon(Icons.transfer_within_a_station,size: 40,),
                              ),
                              SizedBox(height: 5,),
                              Text("Fund Transfer",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return MobileRecharge();
                                }
                            ));
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Icon(Icons.phone_android,size: 40,),
                              ),
                              SizedBox(height: 5,),
                              Text("Mobile Recharge",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child: Icon(Icons.payment,size: 40,),
                            ),
                            SizedBox(height: 5,),
                            Text("Bill Payment",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                          ],
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(
                        flex: 30,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child: Icon(Icons.account_balance_wallet,size: 40,),
                            ),
                            SizedBox(height: 5,),
                            Text("My Accounts",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child: Icon(Icons.supervisor_account,size: 40,),
                            ),
                            SizedBox(height: 5,),
                            Text("Beneficiaries",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child: Icon(Icons.ev_station ,size: 40,),
                            ),
                            SizedBox(height: 5,),
                            Text("Mini Statement",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [

                      Expanded(
                        flex: 30,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Settings();
                                }
                            ));
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Icon(Icons.settings,size: 40,),
                              ),
                              SizedBox(height: 5,),
                              Text("Settings",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 60,
                          child: Container()),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
