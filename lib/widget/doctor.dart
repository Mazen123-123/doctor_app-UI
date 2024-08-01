import 'package:doctor_app/widget/icon_text.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  final Color backgroundcolor;
  final Color colordate;
  final String iconPath;
  final String iconPath1;

  final Color colorTime;
  final String textInIconWidget;
  final String textInIconWidget1;

  final String image;
  final String title;
  final String subTitle;
  final Icon iconnn;

  final Color titleColor;
  final Color subTitleColor;

  const DoctorWidget({
    super.key,
    this.colordate = Colors.white,
    required this.iconPath,
    this.colorTime = Colors.white,
    required this.textInIconWidget,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.iconnn,
    required this.iconPath1,
    required this.textInIconWidget1,
    required this.backgroundcolor,
    this.titleColor = Colors.white,
    this.subTitleColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(image),
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              subTitle,
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: iconnn,
          ),
          Divider(
            color: Colors.white.withOpacity(0.14),
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: [
                IconTextWidget(
                  color: colordate,
                  iconPath: iconPath,
                  text: textInIconWidget,
                ),
                Spacer(),
                IconTextWidget(
                  color: colorTime,
                  iconPath: iconPath1,
                  text: textInIconWidget1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
