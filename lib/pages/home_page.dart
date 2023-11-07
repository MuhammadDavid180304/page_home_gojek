import 'package:flutter/material.dart';
import 'package:gojek/components/akses.dart';
import 'package:gojek/components/goclub.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/menus.dart';
import 'package:gojek/components/news.dart';
import 'package:gojek/components/search.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
//App Bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: green1, borderRadius: BorderRadius.circular(30)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "Beranda",
                  style: semibold14.copyWith(color: green1),
                ),
              ),
              ...["Promo", "Pesanan", "Chat"].map(
                (title) => Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Center(
                          child: Text(
                        title,
                        style: semibold14,
                      )),
                    )),
              )
            ],
          ),
        ),
      ),
      //Search
      body: SingleChildScrollView(
        child: Column(children: [
          //Search
          Search(),
          //Gopay
          Gopay(),
          //Menu Icons
          Menus(),
          //Go Club
          GoClub(),
          // Akses Cepat
          Akses(),
          //News
          News(),
        ]),
      ),
    );
  }
}
