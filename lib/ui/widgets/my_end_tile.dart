// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyEndTile extends StatelessWidget {
  final bool isFirst;
  const MyEndTile({
    super.key,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isFirst
            ? const Color(0xff7F86FF)
            : const Color.fromARGB(101, 169, 255, 254),
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
                Text(
                  "Physics",
                  style: TextStyle(
                      color: isFirst ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "Chapter 3 : Force",
                  style: TextStyle(
                    color: isFirst ? Colors.white : Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                    Text(
                      "Alex Jesus",
                      style: TextStyle(
                          color: isFirst ? Colors.white : Colors.grey),
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
                    Text(
                      "Google Meet",
                      style: TextStyle(
                          color: isFirst ? Colors.white : Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            isFirst
                ? Image.asset("assets/images/1st physics.png")
                : const SizedBox(
                    width: 12,
                  ),
          ],
        ),
      ),
    );
  }
}
