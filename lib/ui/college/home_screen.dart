import 'package:flutter/material.dart';
import 'package:nexus_2/ui/college/widgets/college_container.dart';
import 'package:nexus_2/ui/college/widgets/drawer_item_widget.dart';

class HomeScreen1 extends StatelessWidget {
  HomeScreen1({super.key});

  final List<Map<String, dynamic>> colleges = [
    {
      "name": "Jabalpur Engineering College, Jabalpur",
      "logo":
          "https://upload.wikimedia.org/wikipedia/en/f/f2/Jabalpur_Engineering_College_%28JEC%29%27s_logo.png"
    },
    {
      "name": "Jabalpur Engineering College, Jabalpur",
      "logo":
          "https://upload.wikimedia.org/wikipedia/en/f/f2/Jabalpur_Engineering_College_%28JEC%29%27s_logo.png"
    },
    {
      "name": "Jabalpur Engineering College, Jabalpur",
      "logo":
          "https://upload.wikimedia.org/wikipedia/en/f/f2/Jabalpur_Engineering_College_%28JEC%29%27s_logo.png"
    },
    {
      "name": "Jabalpur Engineering College, Jabalpur",
      "logo":
          "https://upload.wikimedia.org/wikipedia/en/f/f2/Jabalpur_Engineering_College_%28JEC%29%27s_logo.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 100,
                    vertical: MediaQuery.of(context).size.height / 100,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.person_outline_rounded,
                          size: MediaQuery.of(context).size.width / 30,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Student",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "student@gmail.com",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 70,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.grey,
                ),
                const InkWell(
                  child: DrawerItemWidget(
                    iconData: Icons.home_outlined,
                    label: "Home",
                    backgroundColor: Colors.white70,
                    labelColor: Colors.black,
                    iconColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                const InkWell(
                  child: DrawerItemWidget(
                    iconData: Icons.settings_outlined,
                    label: "Settings",
                    backgroundColor: Colors.white70,
                    labelColor: Colors.black,
                    iconColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
                const InkWell(
                  child: DrawerItemWidget(
                    iconData: Icons.person_outline_outlined,
                    label: "Profile",
                    backgroundColor: Colors.white70,
                    labelColor: Colors.black,
                    iconColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: (MediaQuery.of(context).size.width * 3) / 4,
            child: Column(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width * 3) / 4,
                  padding: EdgeInsets.symmetric(
                    //   horizontal: MediaQuery.of(context).size.width / 50,
                    vertical: MediaQuery.of(context).size.height / 50,
                  ),
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 33, 150, 243),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 6.0,
                      )
                    ],
                  ),
                  child: Text(
                    "Home",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: colleges.length,
                  itemBuilder: (context, index) {
                    return CollegeContainer(
                      collegeName: colleges[index]["name"],
                      logoUrl: colleges[index]["logo"],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
