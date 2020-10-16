import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileRecharge extends StatefulWidget {
  @override
  _MobileRechargeState createState() => _MobileRechargeState();
}

class _MobileRechargeState extends State<MobileRecharge> {

  List<String> operators = ["Gp", "Robi", "Airtel", "Banglalink", "Telitalk"];
  List<String> amounts = ["50", "100", "200", "250", "500"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Mobile Recharge",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              Expanded(
                flex: 90,
                child: Container(
                  color: Colors.deepPurple,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: 160,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      color: Colors.white
                                  ),
                                  child: Text("Prepaid")),
                              Container(
                                padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      color: Colors.black54.withOpacity(0.05)
                                  ),
                                  child: Text("Postpaid",style: TextStyle(color: Colors.white),)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                        Expanded(
                          flex: 17,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Colors.white
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Text("Enter Phone Number"),
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black26),
                                      //  when the TextFormField in unfocused
                                    ),
                                    focusedBorder:UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black26),
                                      //  when the TextFormField in unfocused
                                    ),
                                )),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*.12,
                                    color: Colors.black54.withOpacity(0.05),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                    physics: AlwaysScrollableScrollPhysics(),
                                    itemCount: operators.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Icon(Icons.sim_card),
                                            ),
                                            Text(operators[index])
                                          ],
                                        ),
                                      );
                                    }
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 17,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Recharge Amount"),
                              TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black26),
                                      //  when the TextFormField in unfocused
                                    ),
                                    focusedBorder:UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black26),
                                      //  when the TextFormField in unfocused
                                    ),
                                  )),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*.12,
                                  color: Colors.black54.withOpacity(0.05),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: AlwaysScrollableScrollPhysics(),
                                      itemCount: amounts.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Text(amounts[index],style: TextStyle(color: Colors.black54),),
                                              ),

                                            ],
                                          ),
                                        );
                                      }
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Text("Select Account"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 5,
                        child: RaisedButton(
                          color: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          onPressed: (){},
                          child: Row(
                            children: [
                              Text("PROCEED TO RECHARGE",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),

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
