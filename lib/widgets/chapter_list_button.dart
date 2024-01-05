import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChapterListButton extends StatelessWidget {
  final int chapterNumber;
  final String chapterName;
  final int totalVerses;
  final String arabicName;
  final String type;
  const ChapterListButton({
    super.key,
    required this.chapterNumber,
    required this.chapterName,
    required this.totalVerses,
    required this.arabicName,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          CupertinoButton(
            padding: const EdgeInsets.all(1),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 32,
                        width: 32,
                        child: Text(
                          chapterNumber.toString(),
                          style: TextStyle(
                            fontSize: chapterNumber < 100 ? 25 : 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Text(
                              chapterName,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "$totalVerses verses",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      arabicName,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      type,
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.white30,
            thickness: 0.3,
            height: 1,
          ),
        ],
      ),
    );
  }
}
