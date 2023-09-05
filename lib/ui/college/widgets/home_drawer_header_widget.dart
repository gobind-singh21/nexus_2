import 'package:flutter/material.dart';

class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 100,
        vertical: MediaQuery.of(context).size.height / 100,
      ),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.person_outline_rounded,
              size: MediaQuery.of(context).size.width / 40,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Student",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "student@gmail.com",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
