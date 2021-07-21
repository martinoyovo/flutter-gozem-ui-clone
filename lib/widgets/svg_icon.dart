import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgIcon({required String assetName}) => SvgPicture.asset(
    assetName,
    semanticsLabel: '',
    height: 22,
    width: 22
);