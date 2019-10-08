import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../dynamic_widget.dart';

class CupertinoSwitchWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "CupertinoSwitch" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener listener) {
    var cupertinoSwitch = CupertinoSwitch(
      value: map.containsKey('value') ? map['value'] : null,
      onChanged: (bool value) {
        value = value;
      },
      activeColor: map.containsKey('activeColor')
          ? parseHexColor(map['activeColor'])
          : null,
    );

    return cupertinoSwitch;
  }
}
