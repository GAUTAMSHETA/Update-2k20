import 'package:flutter/material.dart';
import 'package:update_2k20/Log_Pages/LogIn.dart';
import 'package:update_2k20/Screens/InerScreen.dart';
import 'package:update_2k20/data.dart';

class homePage extends StatefulWidget {
  final String name;
  final String email;
  homePage({this.name, this.email});
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var list = <GestureDetector>[
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new CodingCrossword())),
          );
        },
        child: Image.asset("Image/Home/CodingCrossword_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new LogoCodify())),
          );
        },
        child: Image.asset("Image/Home/LogoCodify_Home1.jpeg"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new DecodersHunt())),
          );
        },
        child: Image.asset("Image/Home/DecodersHunt_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new Rangolify())),
          );
        },
        child: Image.asset("Image/Home/Rangolify_Home1.jpeg"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new Codemania())),
          );
        },
        child: Image.asset("Image/Home/Codemania_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new GameChefer())),
          );
        },
        child: Image.asset("Image/Home/GameChefer_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new Abhivyakti())),
          );
        },
        child: Image.asset("Image/Home/Abhivyakti_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new CodeTheHints())),
          );
        },
        child: Image.asset("Image/Home/CodeTheHints_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new Innotech())),
          );
        },
        child: Image.asset("Image/Home/Innotech_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new Scavenger())),
          );
        },
        child: Image.asset("Image/Home/Scavenger_Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new Valorant())),
          );
        },
        child: Image.asset("Image/Home/Valorant _Home1.png"),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => inerScreen(clas: new TheWatchCraft())),
          );
        },
        child: Image.asset("Image/Home/TheWatchCraft.png"),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white10,
      drawer: DrawerContainer(),
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            // "Image/Home/AppBar.png",
            "Image/LightLogo2.png",
            scale: 4.9,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        toolbarHeight: 110,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => logInPage()),
              );
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                "Image/Home/HomeBackground.jpeg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (BuildContext context, int position) {
                  return list[position];
                },
                padding: EdgeInsets.all(7.0),
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.grey,
                  height: 50.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget DrawerContainer() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 70,
                width: 80,
                child: Image.asset(
                  "Image/LightLogo2.png",
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    widget.email,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "EDIT PROFILE",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_box_outlined,
              size: 35,
              color: Colors.white,
            ),
            title: Text(
              "ABPUT US",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
