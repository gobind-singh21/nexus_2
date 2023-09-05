import 'package:flutter/material.dart';

class CollegeContainer extends StatelessWidget {
  final String logoUrl;
  final String collegeName;
  const CollegeContainer({
    super.key,
    required this.collegeName,
    required this.logoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 50,
        horizontal: MediaQuery.of(context).size.width / 40,
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 100),
        decoration: BoxDecoration(
          color: const Color.fromARGB(200, 158, 158, 158),
          borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.width / 100,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent,
          ),
          child: ExpansionTile(
            // tilePadding: EdgeInsets.zero,
            childrenPadding:
                EdgeInsets.all(MediaQuery.of(context).size.width / 200),
            expandedAlignment: Alignment.center,
            leading: Image.network(logoUrl),
            title: Text(
              collegeName,
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: MediaQuery.of(context).size.width / 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.transparent,
            collapsedBackgroundColor: Colors.transparent,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildYearButton(context, collegeName, "1st Year"),
                  buildYearButton(context, collegeName, "2nd Year"),
                  buildYearButton(context, collegeName, "3rd Year"),
                  buildYearButton(context, collegeName, "4th Year"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildYearButton(
      BuildContext context, String collegeName, String year) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          "/home/${Uri.encodeComponent(collegeName)}/$year",
        );
      },
      child: Container(
        padding: EdgeInsets.all(
          MediaQuery.of(context).size.width / 200,
        ),
        height: MediaQuery.of(context).size.height / 20,
        width: MediaQuery.of(context).size.width / 15,
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.width / 100,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Text(
          year,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 80,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
