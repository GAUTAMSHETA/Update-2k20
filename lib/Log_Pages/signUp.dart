import 'package:flutter/material.dart';
import 'package:update_2k20/Log_Pages/LogIn.dart';
import 'package:update_2k20/Screens/HomeScreen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:update_2k20/SizeConfig.dart';

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                "Image/Login/LogInBackground.jpeg",
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.blockSizeVertical * 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Spacer(),
                        Image.asset(
                          "Image/LightLogo2.png",
                          scale: 4,
                          color: Color(0xFF33cccc),
                        ),
                        AutoSizeText(
                          "PDATES 2k20",
                          maxFontSize: 35,
                          minFontSize: 20,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            // textBaseline: TextBaseline.none,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    TextContainer(Icons.person, "Enter Name"),
                    TextContainer(Icons.phone, "Enter Phone No"),
                    TextContainer(Icons.mail, "Enter Email ID"),
                    TextContainer(Icons.lock, "Enter Password"),
                    TextContainer(Icons.alt_route_outlined, "Enter Branch"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            "already have an account?",
                            minFontSize: 20,
                            maxFontSize: 25,
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => logInPage()),
                              );
                            },
                            child: Container(
                              child: AutoSizeText(
                                "LogIn",
                                minFontSize: 20,
                                maxFontSize: 25,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 20, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homePage(
                                      name: "Gautam",
                                      email: "shetagautam4343@gmail.com",
                                    )),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 13, horizontal: 70),
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget TextContainer(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 15),
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
              icon: Icon(
                icon,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
