import 'package:flutter/material.dart';


class PartnersSlider extends StatefulWidget {
  @override
  _PartnersSliderState createState() => _PartnersSliderState();
}

class _PartnersSliderState extends State<PartnersSlider> {

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
    return _body(size.width);
  }
  _body(double height) {
    double _height = height/2.8;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: _height,
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
