import 'package:doctor_app/widget/categoey_widget.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: GridView.count(crossAxisCount: 1, scrollDirection: Axis.horizontal, children: <Widget>[
        Category(
          svgPath: 'assets/svg/sun.svg',
          text: 'covid 19',
        ),
        Category(
          svgPath: 'assets/svg/profile-add.svg',
          text: 'doctor',
        ),
        Category(
          svgPath: 'assets/svg/link.svg',
          text: 'Medicine',
        ),
        Category(
          svgPath: 'assets/svg/hospital.svg',
          text: 'Hospital',
        )
      ]),
    );
  }
}
