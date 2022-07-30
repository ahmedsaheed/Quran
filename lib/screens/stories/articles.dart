import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../sizeConfig.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);
  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Container(
            padding: EdgeInsets.all(15),
            // child: SingleChildScrollView(
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(height: getProportionateScreenHeight(80)),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Articles',
                        style: GoogleFonts.hammersmithOne(
                          textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              CupertinoSearchTextField(
                placeholder: "Search",
                onSubmitted: (String value) {
                  print(value);
                },
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
            ]))));
  }
}
