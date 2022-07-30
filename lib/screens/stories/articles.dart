import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);
  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Text(
          'Articles',
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white12, letterSpacing: .5),
          ),
        ),
      ),
    );
  }
}
