import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoButtonWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "CupertinoButton" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener listener) {
    String clickEvent =
        map.containsKey("click_event") ? map['click_event'] : "";

    var cupertinoButton = CupertinoButton(
      color: map.containsKey('color') ? parseHexColor(map['color']) : null,
      padding: map.containsKey('padding')
          ? parseEdgeInsetsGeometry(map['padding'])
          : null,
      disabledColor: map.containsKey('disabledColor')
          ? parseHexColor(map['disabledColor'])
          : null,
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
      minSize: map.containsKey('minSize') ? map['minSize'] : 0.0,
      pressedOpacity:
          map.containsKey('pressedOpacity') ? map['pressedOpacity'] : null,
      borderRadius: map.containsKey('borderRadius')
          ? BorderRadius.all(Radius.circular(map['borderRadius']))
          : const BorderRadius.all(Radius.circular(8.0)),
      onPressed: () {
        listener.onClicked(clickEvent);
      },
    );

    return cupertinoButton;
  }
}
