import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek/datas/icons.dart';
import 'package:gojek/theme.dart';

class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
          height: 157,
          child: GridView.count(
            crossAxisCount: 4,
            children: [
              ...menuIcons.map((icon) => Container(
                    child: Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: icon.icon == "goclub"
                                  ? Colors.white
                                  : icon.color,
                              borderRadius: BorderRadius.circular(20)),
                          child: SvgPicture.asset(
                            "assets/icons/${icon.icon}.svg",
                            color: icon.icon == "goclub"
                                ? icon.color
                                : icon.icon == "other"
                                    ? dark2
                                    : Colors.white,
                          ),
                        ),
                        Text(
                          icon.title,
                          style: regular12_5.copyWith(color: dark2),
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
