import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class Trainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the size of the current screen
    final size = MediaQuery.of(context).size;

    List<String> names = ["Keshini Vitharane", "Zulsha Alibah", "Rakhil Hirdaramani"];

    List<String> description = ["                               Keshini is the fittest"
        " woman in Sri Lanka and the “brains” at CFCY. Her listed 110kg deadlift is"
        " something to behold but when you consider she also received the highest grades "
        "in the world for Business Studies in the London A levels, "
        "you know you are dealing with a well-rounded athlete.",
    "Zulsha, is known at CrossFit                                 "
    "Ceylon as the “engine”. He is also the 2nd fittest man in Sri Lanka. His reputation for"
        " speed and endurance was built over years as a former district level marathon runner, "
        "college rugby player and Battalion ranked Cadet Corp. It wasn’t till Zulsha started to"
        " train in the CrossFit methodology in 2015 that his performance reached its true potential.",
    "                       Long time training buddies, Dimitri Sheriff and Rakhil Hirdaramani decided "
        "to get their Level 1 Certifications in 2015 to learn about CrossFit and functional fitness."];

    return DefaultScaffold(
      title: "Trainers",
      interior: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top:20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:70.0,right: 5,left: 5,bottom: 20),
                      child: Text(description[index],
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    (index%2 == 0) ?ClipOval(
                      child: Image(
                        height: 100,
                        width: 100,
                        image: AssetImage(
                          "assets/trainer"+ index.toString() +".png"
                        ),
                      ),
                    ) : Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: AutoSizeText(
                        names[index],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.grey[400],
                        ),
                      ),
                    ) ,
                    (index%2 == 0) ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: AutoSizeText(
                        names[index],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.grey[400],
                        ),
                      ),
                    ) : ClipOval(
                      child: Image(
                        height: 100,
                        width: 100,
                        image: AssetImage(
                            "assets/trainer"+ index.toString() +".png"
                        ),
                      ),
                    ) ,
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
