// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyEndTile extends StatelessWidget {
  final bool isFirst;
  const MyEndTile({
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isFirst ? Color(0xff7F86FF) : Colors.grey,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Physics",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const Text(
                  "Chapter 3 : Force",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Icon(Icons.access_time_filled, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      "9:30",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placehold.co/80x80/png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Alex Jesus",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placehold.co/80x80/png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Google Meet",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            Image.asset("assets/images/1st physics.png"),
          ],
        ),
      ),
    );
  }
}
