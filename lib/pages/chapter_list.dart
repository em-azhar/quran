import 'package:flutter/material.dart';
import 'package:quran/model/chapter_name_bank.dart';
import 'package:quran/widgets/chapter_list_button.dart';

ChapterNameBank chapterNameBank = ChapterNameBank();

class ChapterListPage extends StatefulWidget {
  const ChapterListPage({super.key});

  @override
  State<ChapterListPage> createState() => _ChapterListPageState();
}

class _ChapterListPageState extends State<ChapterListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 6, 80, 1),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/listpage-bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: List.generate(
                114,
                (index) => ChapterListButton(
                  chapterNumber: chapterNameBank.chapterNameBank[index].id,
                  chapterName:
                      chapterNameBank.chapterNameBank[index].transliteration,
                  totalVerses:
                      chapterNameBank.chapterNameBank[index].totalVerses,
                  arabicName: chapterNameBank.chapterNameBank[index].name,
                  type: chapterNameBank.chapterNameBank[index].type,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
