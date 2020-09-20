import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoticeListTile extends StatelessWidget {

  final title;
  final description;
  final date;

  const NoticeListTile({Key key, this.title, this.description, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.orange,
              blurRadius: 12
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(date,  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),)
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(description, style: GoogleFonts.poppins(fontSize: 16),)
            ],
          ),
        ),
      ),
    );
  }
}
