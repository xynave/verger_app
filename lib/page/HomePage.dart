import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verger/class/carte.dart';


class HomePage extends StatelessWidget {
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
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Color.fromRGBO(77, 144, 80, 1),
      ),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[
        new SizedBox(
        height : 120.0,
          child  : new DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255,254,246,1),

              ),
              child: Stack(
                children: <Widget>[
                Align(
                  alignment : Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/alex-suprun-ZHvM3XIOHoE-unsplash.jpg"),
                  ),
                ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:100.0),
                      child: Text(
                        'Jacob Jones',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:110.0,top:40),
                      child: Text(
                        '06 76 53 53 24',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],),
            ),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
            ),
            ListTile(
              leading: Icon(Icons.gps_fixed),
              title: Text('Carte'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favoris'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.only(right:10.0, left: 10.0),
                child: Divider(
                  thickness: 1.8,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
            ListTile(
              leading: Icon(Icons.input),
              title: Text('Déconnexion'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                 Container(
                    height: 100,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/metrolist-services-SVbkVvpzmxM-unsplash.jpg"),
                            fit:BoxFit.cover
                        )
                    ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 13,top: 24),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Proche de chez vous :", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                          SizedBox(height:10),
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: SizedBox(
                              height: 175.0,
                              child: ListView.builder(
                                  physics: ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cartes.length,
                                  itemBuilder: (BuildContext context, int index) => _Card(
                                    cartee: cartes[index],
                                  )
                              ),
                            ),
                          ),

                          SizedBox(height:20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("1 Km :", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                          SizedBox(height:10),
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: SizedBox(
                              height: 175.0,
                              child: ListView.builder(
                                  physics: ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cartes.length,
                                  itemBuilder: (BuildContext context, int index) => _Card(
                                    cartee: cartes[index],
                                  )
                              ),
                            ),
                          ),


                          SizedBox(height:20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("10 Km :", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                          SizedBox(height:10),
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: SizedBox(
                              height: 175.0,
                              child: ListView.builder(
                                  physics: ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cartes.length,
                                  itemBuilder: (BuildContext context, int index) => _Card(
                                    cartee: cartes[index],
                                  )
                              ),
                            ),
                          ),

                          SizedBox(height:20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("100 Km :", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                          SizedBox(height:10),
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: SizedBox(
                              height: 175.0,
                              child: ListView.builder(
                                  physics: ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cartes.length,
                                  itemBuilder: (BuildContext context, int index) => _Card(
                                    cartee: cartes[index],
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),




                  ],
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, top: 60),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Text("Liste", style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.white,
                    ),),
                    Switch(value: false, onChanged: (bool value){
                    }),
                  ],
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
class _Card extends StatelessWidget {
  final Carte cartee;
  const _Card({Key key, this.cartee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 135,
      height: 160,
      margin: const EdgeInsets.only(right: 20,bottom: 10),
      child: Material(
        color: Color.fromRGBO(255,254,246,1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            cartee.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      cartee.favorite == true ?
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromRGBO(255, 214, 0, 1),
                          size: 16.0,
                        ),
                      ):
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 16.0,
                        ),
                      ),
                    ],

                  ),
                  SizedBox(height:3),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        cartee.type,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 9,
                          color: Color.fromRGBO(148, 147, 143, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:5),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      cartee.imagePath,
                      width: 135,
                      height: 130,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );

  }}




