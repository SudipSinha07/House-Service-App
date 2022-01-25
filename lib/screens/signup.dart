import 'package:flutter/material.dart';
import 'package:house/screens/login.dart';
import 'package:house/screens/otp.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/signup.png"),
              )
            ),
////////////////////////////
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Home Service Expert",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Continue with Phone Number",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Container(
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.85,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.phone,size: 15,),
                      Text(" (USA) +1",style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                  SizedBox( width: MediaQuery.of(context).size.width*0.01,
                      //child: Divider(height: 15,thickness: 2,color: Colors.black,)
                     ),
                  Expanded(
                      flex: 3,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter Mobile Number",
                          enabledBorder: InputBorder.none
                        ),
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.85,
              child: RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Otp()));
              },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.black,
                child: Text("SIGN UP",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.04,
              width: MediaQuery.of(context).size.width*0.85,
              child: TextButton(onPressed: (){},
                child: Text("VIEW OTHER OPTION",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.deepPurpleAccent,
                ),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ALREADY HAVE AN ACCOUNT?",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                },
                  child: Text("LOG IN",style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue,
                  ),),
                ),
              ],
            ),

            ////
          ],
        ),
      ),
    );
  }
}
