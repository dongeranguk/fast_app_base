import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:nav/nav.dart';

import '../../../../../common/widget/w_arrow.dart';
import '../../../../../common/widget/w_tap.dart';

class AnimatedAppBar extends StatefulWidget {
  final String title;
  final ScrollController controller;

  const AnimatedAppBar(this.title, {required this.controller, super.key});

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Tap(
              onTap: () {
                Nav.pop(context);
              },
              child: Arrow(
                direction: AxisDirection.left,
                color: Colors.white,
              )).p20(),
          
        ],
      ),
    );
  }
}
