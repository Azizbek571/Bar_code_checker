import 'package:flutter/material.dart';

class AppBar_Users extends StatelessWidget {
  const AppBar_Users({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    ),
      ),
      height: 120,
      width: 180,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.people_alt,
                  size: 40,
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "Today's Users",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(
                      "2,300",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              color: Color.fromARGB(255, 218, 214, 214),
            ),
            Row(
              children: [
                Text(
                  "+3%",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                      fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "than last month",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
