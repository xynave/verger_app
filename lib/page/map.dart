import 'package:flutter/material.dart';


class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Verger',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/metrolist-services-SVbkVvpzmxM-unsplash.jpg"),
                      fit:BoxFit.cover
                  )
              ),
              child: Text(
                'Verger',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.gps_fixed),
              title: Text('Map'),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right:30.0, left: 30.0),
              child: Divider(
                color: Colors.blueGrey,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: height *0.33,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/metrolist-services-SVbkVvpzmxM-unsplash.jpg"),
                            fit:BoxFit.cover
                        )
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Switch(value: true, onChanged: (bool value){
                    }),
                    Padding(padding: const EdgeInsets.only(top: 138, left: 50),
                      child: Text("Map :", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    )
                  ],
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path= new Path();
    path.lineTo(0, size.height-70);
    path.lineTo(0, size.height-50);
    path.quadraticBezierTo(size.width/4,(size.height*5)/8, size.width/2, size.height-50);
    //path.quadraticBezierTo(size.width-(size.width/4),size.height-25, size.width, size.height-50);
    path.lineTo(size.width, size.height-50);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}