import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget offersGrid({required List list}) {

  return GridView.count(
    physics: BouncingScrollPhysics(),
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    //horizontal: getProportionateScreenWidth(15),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    crossAxisCount: 2,
    mainAxisSpacing: 15,
    crossAxisSpacing: 15,
    childAspectRatio: 0.7,

    children: List.generate(list.length, (index) {
      final item = list[index];
      return Container();
    }),
  );
}
