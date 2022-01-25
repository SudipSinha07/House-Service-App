import 'package:flutter/material.dart';
import 'package:house/screens/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.black,),
            label: 'Home',
            activeIcon: Icon(Icons.home_outlined,color: Colors.blue,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard_sharp,color: Colors.black,),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,color: Colors.black,),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_sharp,color: Colors.black,),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,),
            label: 'Profile',
          ),
        ],
      ),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
            },
            child: Icon(
              Icons.keyboard_backspace,
              color: Colors.black,
              size: 25,
            )
        ),
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.black,),
                    Text("Home",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                    Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ],
                ),
                Text("Inner Circle, Connaught Place...",style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),),
              ],
            ),

          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search,size: 30,color: Colors.black,))
        ],
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
      //////////
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height*0.35,
                width: MediaQuery.of(context).size.width*1,
              child: Image.asset("assets/images/home2.png")
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            // GridView(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            //   children: <Widget>[
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(Icons.home_outlined),
            //         Text("Renovation",style: TextStyle(
            //           fontSize: 15,
            //           color: Colors.black,
            //         ),),
            //       ],
            //     ),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(Icons.room_preferences),
            //         Text("Handyman",style: TextStyle(
            //           fontSize: 15,
            //           color: Colors.black,
            //         ),),
            //       ],
            //     ),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(Icons.local_shipping_outlined),
            //         Text("Home shifting",style: TextStyle(
            //           fontSize: 15,
            //           color: Colors.black,
            //         ),),
            //       ],
            //     ),
            //   ],
            //
            // ),

            /////////
          ],
        ),
      ),
    );
  }
}
