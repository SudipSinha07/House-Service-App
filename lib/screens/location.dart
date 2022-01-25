import 'package:flutter/material.dart';
import 'package:house/screens/home.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hey, nice to meet you!",style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("See Services Around",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width*0.9,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/location.png"),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.85,
              child: RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.my_location_outlined,color: Colors.white,),
                    Text(" Your current Location",style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ],
                )
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.85,
              child: OutlineButton(
                  hoverColor: Colors.cyan,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search,color: Colors.grey,),
                      Text("Some other location",style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey,
                      ),),
                    ],
                  ),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                  }
              ),
            ),

            ////////////
          ],
        ),
      ),
    );
  }
}
