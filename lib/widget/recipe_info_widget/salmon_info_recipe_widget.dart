import 'package:dz_2/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class SalmonInfoRecipeWidget extends StatelessWidget {
  const SalmonInfoRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 60,
        actions: const [Icon(UniconsLine.volume)],
        title: const Text(
          'Рецепт',
          style: TextStyle(color: Color(0xff165932)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          (const SingleChildScrollView(
              child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 27.6, left: 17),
                child: Text(
                  'Лосось в соусе терияки',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 64.41, left: 44),
                child: Text('45 минут',
                    style: TextStyle(color: Color(0xff2ECC71), fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 65.43, left: 17),
                child: Icon(
                  Icons.watch_later_outlined,
                  size: 16.32,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100.8, left: 15, right: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  child: Image(
                    image: AssetImage(AppImages.salmon),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 343, left: 16),
                child: Text('Ингредиенты',
                    style: TextStyle(
                        color: Color(0xff165932),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )))
        ]))
      ]),
    );
  }
}
