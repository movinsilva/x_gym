import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_gym/styles/Pallete.dart';

class TabLayout extends StatefulWidget {
  List<String> list;
  int selectedCategory = 0;

  TabLayout(this.list);

  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        itemCount: widget.list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedCategory = index;
              });
            },
            child: Column(
              children: <Widget>[
                Text(
                  widget.list[index],
                  style: GoogleFonts.poppins(
                    color: index == widget.selectedCategory? Colors.black54 : Colors.black26,
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
                      color: index == widget.selectedCategory ? Pallete.DefaultThemeColour: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
