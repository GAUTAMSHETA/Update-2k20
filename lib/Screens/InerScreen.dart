import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:update_2k20/data.dart';

class inerScreen extends StatefulWidget {
  var clas;
  inerScreen({this.clas});
  // final CodingCrossword clas = new CodingCrossword();
  @override
  _inerScreenState createState() => _inerScreenState();
}

class _inerScreenState extends State<inerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.clas.name),
      ),
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              widget.clas.poster,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            maxChildSize: 0.8,
            minChildSize: 0.5,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        "Image/Home/HomeBackground.jpeg",
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ListView(
                      controller: scrollController,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextContainer(
                                "Team Size : ${widget.clas.TeamSize}"),
                            TextContainer(widget.clas.eventtype),
                          ],
                        ),
                        SizedBox(height: 25),
                        widget.clas.register == null
                            ? Container()
                            : Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: AutoSizeText(
                                  widget.clas.register,
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 25),
                                ),
                              ),
                        SizedBox(height: 30),
                        Description("Description", widget.clas.discription),
                        SizedBox(height: 30),
                        Description("Event Organizer", widget.clas.organizer),
                        SizedBox(height: 30),
                        TextContainer2("ADD MEMBER"),
                        TextContainer2("REGISTER"),
                        SizedBox(height: 100),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget TextContainer(String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }

  Widget TextContainer2(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        // width: 10,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.symmetric(vertical: 20),
      ),
    );
  }

  Widget Description(String title, String subtitle) {
    return ListTile(
      title: Text(
        "${title} :",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Text(
          subtitle,
          style: TextStyle(color: Colors.white60, fontSize: 15),
        ),
      ),
    );
  }
}
