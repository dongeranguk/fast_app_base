import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const OnSwitch({required this.value, required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSwitch(
            value: value,
            onChanged: onChanged,
          )
        : Switch(
            value: value,
            onChanged: onChanged,
          );
  }
}
