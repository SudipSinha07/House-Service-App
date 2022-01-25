import 'package:flutter/material.dart';
import 'package:house/screens/location.dart';
import 'package:house/screens/otp.dart';
import 'package:house/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome Back !",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.09,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.85,
              child: RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Location()));
              },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.blueAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.facebook,color: Colors.white,),
                      Text(" CONTINUE WITH FACEBOOK",style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    ],
                  )
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.85,
              child: OutlineButton(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.mail_outline,color: Colors.red,),
                      Text("CONTINUE WITH GOOGLE",style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Location()));
                  }
              ),
            ),
////////////////////////////////////
            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OR CONTINUE WITH PHONE NUMBER",style: TextStyle(
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
                child: Text("LOG IN",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.85,
              child: TextButton(onPressed: (){},
                child: Text("Forgot Password?",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("DON`T HAVE AN ACCOUNT?",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
                },
                  child: Text("SIGN UP",style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue,
                  ),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
