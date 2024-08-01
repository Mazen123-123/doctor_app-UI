import 'package:doctor_app/widget/GridviewWidget.dart';
import 'package:doctor_app/widget/doctor.dart';
import 'package:doctor_app/widget/header.dart';
import 'package:doctor_app/widget/input.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const HeaderWidget(),
              const DoctorWidget(
                backgroundcolor: Color(0xFF4894FE),
                textInIconWidget1: '11:00 - 12:00 AM',
                subTitle: 'General Doctor',
                iconnn: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                textInIconWidget: 'Sunday, 12 June',
                iconPath: 'assets/svg/calendar.svg',
                iconPath1: 'assets/svg/clock.svg',
                title: 'Dr. Imran Syahir',
                image: 'assets/images/profile.png',
              ),
              const InputWidget(),
              const GridWidget(),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const DoctorWidget(
                      titleColor: Colors.black,
                      subTitleColor: Color(0xFF8696BB),
                      backgroundcolor: Colors.white,
                      textInIconWidget1: 'Open at 17.00',
                      iconPath: 'assets/svg/clock.svg',
                      iconnn: Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      iconPath1: 'assets/svg/clock.svg',
                      colordate: Color(0xFFFEB052),
                      colorTime: Color(0xFF4894FE),
                      textInIconWidget: '4,8 (120 Reviews)',
                      title: 'Dr. John Doe',
                      subTitle: 'Dental specialist',
                      image: 'assets/images/profile.png',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
