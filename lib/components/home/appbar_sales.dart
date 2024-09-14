import 'package:flutter/material.dart';

class AppBar_Sales extends StatelessWidget {
  const AppBar_Sales({
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
                  Icons.bar_chart,
                  size: 50,
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "Sales",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Text(
                      "\$103,430",
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
                  "+5%",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
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
