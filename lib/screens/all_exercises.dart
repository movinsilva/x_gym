/*
* created by Movin on 27/09/2020
* */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/provider/db_provider.dart';
import 'package:x_gym/widgets/widgets_library.dart';

class AllExercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultScaffold(
      title: "All Exercises",
      interior: Column(
        children: <Widget>[
          TabLayout(["Chest", "Arms", "Shoulders", "Legs", "Back", "Abs"]),
          Expanded(
              child: FutureBuilder(
            future: DBProvider.db.getAllExercises(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15),
                    child: InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => CupertinoAlertDialog(
                          title: Text(
                            snapshot.data[index].name,
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          content: Container(
                            height: size.height * 0.44,
                            width: size.width * 0.8,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: size.height * 0.2,
                                  width: size.width * 0.5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey, blurRadius: 15),
                                      ],
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Expanded(
                                      child: CachedNetworkImage(
                                        imageUrl: snapshot.data[index].imageUrl,
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  snapshot.data[index].description,
                                  style: GoogleFonts.poppins(fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                                child: CachedNetworkImage(
                                  imageUrl: snapshot.data[index].imageUrl,
                                  height: 60,
                                  width: 60,
                                ),

                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 8)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: AutoSizeText(
                                  snapshot.data[index].name,
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          )),
        ],
      ),
    );
  }
}
