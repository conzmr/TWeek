import 'package:flutter/material.dart';

class WeekPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Color(0xff4B4BB7)),
                onPressed: () {},
              ),
              title: Text("Mi Plan",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4B4BB7)))),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Color(0xffA3A3CC),
            unselectedIconTheme: IconThemeData(color: Color(0xffA3A3CC)),
            selectedItemColor: Color(0xff6161AB),
            selectedIconTheme: IconThemeData(color: Color(0xff484884)),
            selectedLabelStyle: TextStyle(color: Color(0xff6161AB)),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff8989BE),
                    size: 30.0,
                  ),
                  label: 'Perfil'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.date_range,
                    color: Color(0xff8989BE),
                    size: 30.0,
                  ),
                  label: 'Plan'),
            ],
          ),
          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff4B4BB7).withOpacity(.2),
                    ),
                    child: TabBar(
                      unselectedLabelColor: Color(0xff4B4BB7),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff4B4BB7)),
                      tabs: [Tab(text: "Day"), Tab(text: "Week")],
                    ),
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                      children: [
                        buildGridCard(
                            title: "Lunes",
                            color: Color(0xffFF6968),
                            icon: Icons.whatshot,
                            dis: "Youtube Video",
                            label1: "Glúteo",
                            anColor: Colors.red[200]),
                        buildGridCard(
                            title: "Martes",
                            color: Color(0xff7A54FF),
                            icon: Icons.hourglass_empty,
                            dis: "Sin programar",
                            label1: "Abdomen",
                            anColor: Color(0xffBFADFF)),
                        buildGridCard(
                          title: "Miércoles",
                          color: Color(0xffFF8F61),
                          icon: Icons.fitness_center,
                          dis: "Youtube Video",
                          label1: "Brazo y pecho",
                          anColor: Color(0xffFFC5AD),
                        ),
                        buildGridCard(
                            title: "Jueves",
                            color: Color(0xff2AC3FF),
                            icon: Icons.whatshot,
                            dis: "Youtube Video",
                            label1: "Glúteo y pierna",
                            anColor: Color(0XffADE8FF)),
                        buildGridCard(
                            title: "Viernes",
                            color: Color(0xff96DA45),
                            icon: Icons.favorite,
                            dis: "Instagram Live\n @barbaraderegil",
                            label1: "Cardio Hit",
                            anColor: Color(0xffD8F2BB)),
                        buildGridCard(
                            title: "Sábado",
                            color: Color(0xffFF6968),
                            icon: Icons.accessibility_new,
                            dis: "Instagram Live\n @aleestefanía",
                            label1: "Full Body",
                            anColor: Colors.red[200]),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}

Widget buildGridCard(
    {String title,
    IconData icon,
    String label1,
    String label2,
    String dis,
    Color anColor,
    Color color}) {
  return Container(
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
    child: Stack(
      children: [
        Container(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white60)),
                SizedBox(height: 18),
                Text(label1,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(dis,
                        style: TextStyle(fontSize: 16, color: Colors.white54))
                  ],
                )
              ],
            )),
        Positioned(
          top: -10,
          right: -5,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: anColor,
            //child: SvgPicture.asset("icons/"),
            child: Icon(
              icon,
              color: Colors.white54,
              size: 30.0,
            ),
          ),
        )
      ],
    ),
  );
}
