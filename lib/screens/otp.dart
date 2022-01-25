import 'package:flutter/material.dart';
import 'package:house/screens/location.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_backspace,
                color: Colors.black,
                size: 40,
              )
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
        ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.35,
              width: MediaQuery.of(context).size.width*0.9,
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/images/otp1.png"),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OTP Verification",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter the OTP sent to ",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),),
                Text(" +1 9879878975",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            hintText: "0",
                            enabledBorder: InputBorder.none
                        ),
                      ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                              hintText: "0",
                              enabledBorder: InputBorder.none
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                              hintText: "0",
                              enabledBorder: InputBorder.none
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                              hintText: "0",
                              enabledBorder: InputBorder.none
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OTP not recieved?",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),),
                TextButton(onPressed: (){},
                  child: Text("RESEND OTP",style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue,
                  ),),
                ),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.85,
              child: RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Location()));
              },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.black,
                child: Text("VERIFY & PROCEED",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),),
              ),
            ),

            //////////
          ],
        ),
      ),

    );
  }
}
