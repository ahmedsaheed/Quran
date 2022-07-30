import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class community extends StatefulWidget {
  const community({Key? key}) : super(key: key);
  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Text(
          'Community',
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white12, letterSpacing: .5),
          ),
        ),
      ),
    );
  }
}
