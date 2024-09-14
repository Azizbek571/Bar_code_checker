import 'package:flutter/material.dart';

class Bell extends StatelessWidget {
  const Bell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        onPressed: (){
      
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Container(
              padding: const EdgeInsets.all(1),
              height: 200,
              // width: 300,
              child: const Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/image5.jpg'),
                        radius: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "New message",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                                Text(
                                  " from Laur",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "13 minutes ago",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            // AssetImage('assets/images/image5.jpg'),
                            AssetImage('assets/images/wife.jpg'),
                        radius: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "New album",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                                Text(
                                  " by Travis Scott",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "1 day ago",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/pay.jpg'),
                        radius: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Payment succesfully done",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "13 minutes ago",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      
        },
        icon: const Icon(
          Icons.doorbell,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
