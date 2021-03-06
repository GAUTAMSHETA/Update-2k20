import 'package:flutter/material.dart';
import 'package:update_2k20/Log_Pages/signUp.dart';
import 'package:update_2k20/Screens/HomeScreen.dart';
import 'package:auto_size_text/auto_size_text.dart';

class logInPage extends StatefulWidget {
  @override
  _logInPageState createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                "Image/Login/LogInBackground.jpeg",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 45),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Spacer(),
                        Image.asset(
                          "Image/LightLogo2.png",
                          scale: 4,
                          color: Color(0xFF33cccc),
                        ),
                        Text(
                          "PDATES 2k20",
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
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 20, top: 40),
                      child: TextContainer(
                          Icon(
                            Icons.mail,
                            color: Colors.black45,
                            size: 30,
                          ),
                          "Enter Email ID"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 20, top: 10),
                      child: TextContainer(
                          Icon(
                            Icons.lock,
                            color: Colors.black45,
                            size: 30,
                          ),
                          "Enter Password"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            "already have not account?",
                            minFontSize: 20,
                            maxFontSize: 25,
                            style: TextStyle(color: Colors.white,),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signUpPage()),
                              );
                            },
                            child: Container(
                              child: AutoSizeText(
                                "Sign In",
                                minFontSize: 20,
                                maxFontSize: 25,
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        "Forggot Password?",
                        minFontSize: 20,
                        maxFontSize: 25,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
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
                            "LOG IN",
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

  Widget TextContainer(Icon i, String text) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10),
            child: i,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: text,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
