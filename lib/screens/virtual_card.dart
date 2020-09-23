import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VirtualCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
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
            AutoSizeText(
              "Fitness.lk",
              style: GoogleFonts.poppins(
                fontSize: 29,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Image(
              height: size.height*0.18,
              width: size.width*0.35,
              image: AssetImage("assets/id_gym_logo.png"),
            ),
            AutoSizeText(
              "\"If you get tired, learn to rest,",
              style: GoogleFonts.ranchers(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black45,
              ),
            ),
            AutoSizeText(
              "learn to quit \"",
              style: GoogleFonts.ranchers(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Image(
                  fit: BoxFit.fill,
                  height: 151,
                  image: AssetImage("assets/profilepic.png",
                  ),
                ),
              ),
            ),
            AutoSizeText(
              "Sandev Kuruppu",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black45
              ),
            ),
            AutoSizeText(
              "1656456",
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black45
              ),
            ),
            SizedBox(
              height: 100,
            ),
            AutoSizeText(
              "Expires on 31/09/2020",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black45
              ),
            )
          ],
        ),
      ),
    );
  }
}
