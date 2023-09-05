import 'package:flutter/material.dart';
import 'package:nexus_2/ui/college/widgets/college_container.dart';

class CollegePage extends StatelessWidget {
  CollegePage({super.key});

  final List<Map<String, dynamic>> colleges = [
    {
      "name": "Sipna College of Engineering and Technology",
      "logo":
          "https://media.licdn.com/dms/image/C560BAQFVHHytyt3gvQ/company-logo_400_400/0/1668507402627?e=1701302400&v=beta&t=BLQmMRjT7kB40zAlvbr5NhuLI9XfTNKTamCTA2VcpZ0"
    },
    {
      "name": "Coep",
      "logo":
          "https://upload.wikimedia.org/wikipedia/en/f/f0/College_of_Engineering%2C_Pune_logo.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: colleges.length,
        itemBuilder: (context, index) {
          return CollegeContainer(
            collegeName: colleges[index]["name"],
            logoUrl: colleges[index]["logo"],
          );
        },
      ),
    );
  }
}
