import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWithRightLine extends StatelessWidget {

  final title;

  const HeaderWithRightLine({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        AutoSizeText(
          title,
          maxLines: 1,
          style:
          GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.grey[400]),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            height: 4,
            color: Colors.grey[400],
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
