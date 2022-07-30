import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recitation extends StatefulWidget {
  const Recitation({Key? key}) : super(key: key);
  @override
  State<Recitation> createState() => _RecitationState();
}

class _RecitationState extends State<Recitation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Text(
          'Recitation',
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white12, letterSpacing: .5),
          ),
        ),
      ),
    );
  }
}
