import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_os_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.white.bold.make(),
        emptyExpanded,
        OnSwitch(
          value: isOn,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
