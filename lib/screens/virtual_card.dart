import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VirtualCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/id_bg.jpg"),
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height*0.05
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "New Login",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          Text(
            "Fitness.lk",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Image(
            height: size.height*0.18,
            width: size.width*0.35,
            image: AssetImage("assets/id_gym_logo.png"),
          ),
        ],
      ),
    );
  }
}
