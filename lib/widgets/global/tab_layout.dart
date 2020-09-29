import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:x_gym/provider_models/dashboard_viewmodel.dart';
import 'package:x_gym/provider_models/tab_viewmodel.dart';
import 'package:x_gym/styles/Pallete.dart';

class TabLayout extends StatelessWidget {
  List<String> list;

  TabLayout(this.list);

  @override
  Widget build(BuildContext context) {
    return Consumer<TabViewModel>(
      builder: (context, model, widget) => Container(
        height: 45,
        child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: InkWell(
              onTap: () {
                  model.index = index;
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Column(
                children: <Widget>[
                  Text(
                    list[index],
                    style: GoogleFonts.poppins(
                      color: index == model.index? Colors.black54 : Colors.black26,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Container(
                      height: 6,
                      width: 40,
                      decoration: BoxDecoration(
                        color: index == model.index ? Pallete.DefaultThemeColour: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
