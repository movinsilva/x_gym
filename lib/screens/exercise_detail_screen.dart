import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/constants/args/exercise_detail_args.dart';
import 'package:x_gym/widgets/global/default_background.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class ExerciseDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ExerciseDetailArgs args = ModalRoute.of(context).settings.arguments;

    return DefaultScaffold(
      title: args.exerciseName,
      interior: Column(
        children: [
          HeaderWithSideLine(
            title: args.muscleName,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: AutoSizeText(
              args.exerciseName,
              style: GoogleFonts.poppins(
                  color: Colors.black87, fontSize: 30, fontWeight: FontWeight.w600, letterSpacing: 0.6),
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: AutoSizeText(
              args.reps[0].toString() +
                  "x" +
                  args.sets[0].toString() +
                  " " +
                  args.reps[1].toString() +
                  "x" +
                  args.sets[1].toString() +
                  " " +
                  "" +
                  args.reps[2].toString() +
                  "" +
                  "x" +
                  args.sets[2].toString(),
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20, letterSpacing: 0.6),
              maxLines: 1,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Material(
                  color: Color(0xFF00E54E),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Text(
                          "Start",
                          style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600, letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Material(
                  color: Colors.red,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Text(
                          "Start",
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white, letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          AutoSizeText(
            "00:00:00",
            style: GoogleFonts.poppins(
              fontSize: 70,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 500,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15
                ),
              ],
              borderRadius: BorderRadius.circular(25)
            ),
          )
        ],
      ),
    );
  }
}
