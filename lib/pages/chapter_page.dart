import 'package:flutter/material.dart';

class ChapterPage extends StatefulWidget {
  final int chapterNumber;

  const ChapterPage({
    super.key,
    required this.chapterNumber,
  });

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  @override
  Widget build(BuildContext context) {
    var index = widget.chapterNumber - 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 6, 80, 1),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/listpage-bg.png"), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Text(
            index.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
