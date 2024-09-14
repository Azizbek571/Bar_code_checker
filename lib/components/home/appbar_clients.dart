import 'package:flutter/material.dart';

class AppBar_clients extends StatelessWidget {
  const AppBar_clients({
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
                  Icons.person_add,
                  size: 40,
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "New Clients",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(
                      "3,462",
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
                  "-2%",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                      fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "than yesterday",
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
