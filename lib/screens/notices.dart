import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_gym/widgets/global/default_background.dart';
import 'file:///C:/Users/Sandev/Desktop/x_gym/lib/widgets/screens/notice/notice_list_tile.dart';

class NoticesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var noticeList = [
      Notice(
          "Gym is closed",
          "We are closed on 2020/02/23 as it is the binara full moon poya day", "2020/12/12"),
      Notice("Payment", "Please pay your fee before 2020/03/31", "2020/03/01"),
      Notice(
          "Gym is closed",
          "We are closed on 2020/02/23 as it is the binara full moon poya day", "2020/12/12"),
      Notice("Payment", "Please pay your fee before 2020/03/31", "2020/03/01"),
      Notice(
          "Gym is closed",
          "We are closed on 2020/02/23 as it is the binara full moon poya day", "2020/12/12"),
      Notice("Payment", "Please pay your fee before 2020/03/31", "2020/03/01")
    ];

    return DefaultScaffold(
      title: "Notices",
      interior: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => NoticeListTile(
                title: noticeList[index].title,
                date: noticeList[index].date,
                description: noticeList[index].description,
              ),
              itemCount: noticeList.length,
            ),
          ),
        ),
    );
  }
}

class Notice {
  final title;
  final description;
  final date;

  Notice(this.title, this.description, this.date);
}
