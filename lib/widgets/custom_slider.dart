import 'package:flutter/material.dart';
import 'package:flutter_gozem_ui_clone/utils/styles.dart';
import 'package:gap/gap.dart';


class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  var controller = PageController();
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!.round();
      });
    });
    return _body();
  }
  _body() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 170,
      child: PageView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListView(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 170,
                decoration: BoxDecoration(
                  color: Styles.blueColor,
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
              Gap(10),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Styles.primaryColor
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
