import 'package:flutter/material.dart';
import 'package:flutter/src/services/system_chrome.dart';

class CustomAppBar extends StatelessWidget {
  final String label;
  CustomAppBar({required this.label});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(label),
    );
  }

  @override
  // TODO: implement actions
  List<Widget>? get actions => throw UnimplementedError();

  @override
  // TODO: implement actionsIconTheme
  IconThemeData? get actionsIconTheme => throw UnimplementedError();

  @override
  // TODO: implement automaticallyImplyLeading
  bool get automaticallyImplyLeading => throw UnimplementedError();

  @override
  // TODO: implement backgroundColor
  Color? get backgroundColor => throw UnimplementedError();

  @override
  // TODO: implement backwardsCompatibility
  bool? get backwardsCompatibility => throw UnimplementedError();

  @override
  // TODO: implement bottom
  PreferredSizeWidget? get bottom => throw UnimplementedError();

  @override
  // TODO: implement bottomOpacity
  double get bottomOpacity => throw UnimplementedError();

  @override
  // TODO: implement brightness
  Brightness? get brightness => throw UnimplementedError();

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => throw UnimplementedError();

  @override
  State<AppBar> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

  @override
  // TODO: implement elevation
  double? get elevation => throw UnimplementedError();

  @override
  // TODO: implement excludeHeaderSemantics
  bool get excludeHeaderSemantics => throw UnimplementedError();

  @override
  // TODO: implement flexibleSpace
  Widget? get flexibleSpace => throw UnimplementedError();

  @override
  // TODO: implement foregroundColor
  Color? get foregroundColor => throw UnimplementedError();

  @override
  // TODO: implement iconTheme
  IconThemeData? get iconTheme => throw UnimplementedError();

  @override
  // TODO: implement leading
  Widget? get leading => throw UnimplementedError();

  @override
  // TODO: implement leadingWidth
  double? get leadingWidth => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

  @override
  // TODO: implement primary
  bool get primary => throw UnimplementedError();

  @override
  // TODO: implement scrolledUnderElevation
  double? get scrolledUnderElevation => throw UnimplementedError();

  @override
  // TODO: implement shadowColor
  Color? get shadowColor => throw UnimplementedError();

  @override
  // TODO: implement shape
  ShapeBorder? get shape => throw UnimplementedError();

  @override
  // TODO: implement surfaceTintColor
  Color? get surfaceTintColor => throw UnimplementedError();

  @override
  // TODO: implement systemOverlayStyle
  SystemUiOverlayStyle? get systemOverlayStyle => throw UnimplementedError();

  @override
  // TODO: implement textTheme
  TextTheme? get textTheme => throw UnimplementedError();

  @override
  // TODO: implement title
  Widget? get title => throw UnimplementedError();

  @override
  // TODO: implement titleSpacing
  double? get titleSpacing => throw UnimplementedError();

  @override
  // TODO: implement titleTextStyle
  TextStyle? get titleTextStyle => throw UnimplementedError();

  @override
  // TODO: implement toolbarHeight
  double? get toolbarHeight => throw UnimplementedError();

  @override
  // TODO: implement toolbarOpacity
  double get toolbarOpacity => throw UnimplementedError();

  @override
  // TODO: implement toolbarTextStyle
  TextStyle? get toolbarTextStyle => throw UnimplementedError();
}
