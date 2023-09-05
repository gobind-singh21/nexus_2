import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final IconData iconData;
  final String label;
  final Color backgroundColor;
  final Color labelColor;
  final Color iconColor;
  const DrawerItemWidget({
    super.key,
    required this.iconData,
    required this.label,
    required this.backgroundColor,
    required this.labelColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.width / 100,
        bottom: MediaQuery.of(context).size.height / 100,
        right: MediaQuery.of(context).size.height / 100,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            MediaQuery.of(context).size.width / 80,
          ),
          bottomRight: Radius.circular(
            MediaQuery.of(context).size.width / 80,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 150,
        vertical: MediaQuery.of(context).size.height / 150,
      ),
      height: MediaQuery.of(context).size.height / 15,
      child: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 200,
          ),
          Text(
            label,
            style: TextStyle(
              color: labelColor,
            ),
          ),
        ],
      ),
    );
  }
}
