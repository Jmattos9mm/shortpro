import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'game_a01_screen_widget.dart' show GameA01ScreenWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GameA01ScreenModel extends FlutterFlowModel<GameA01ScreenWidget> {
  ///  Local state fields for this page.

  int outside30 = 0;

  int ft15to30 = 0;

  int ft6to15 = 0;

  int inside6 = 0;

  int totalShots = 0;

  int totalPoints = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for tfInside6 widget.
  FocusNode? tfInside6FocusNode;
  TextEditingController? tfInside6TextController;
  String? Function(BuildContext, String?)? tfInside6TextControllerValidator;
  // State field(s) for tf6to15 widget.
  FocusNode? tf6to15FocusNode;
  TextEditingController? tf6to15TextController;
  String? Function(BuildContext, String?)? tf6to15TextControllerValidator;
  // State field(s) for tf15to30 widget.
  FocusNode? tf15to30FocusNode;
  TextEditingController? tf15to30TextController;
  String? Function(BuildContext, String?)? tf15to30TextControllerValidator;
  // State field(s) for tfOutside30 widget.
  FocusNode? tfOutside30FocusNode;
  TextEditingController? tfOutside30TextController;
  String? Function(BuildContext, String?)? tfOutside30TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfInside6FocusNode?.dispose();
    tfInside6TextController?.dispose();

    tf6to15FocusNode?.dispose();
    tf6to15TextController?.dispose();

    tf15to30FocusNode?.dispose();
    tf15to30TextController?.dispose();

    tfOutside30FocusNode?.dispose();
    tfOutside30TextController?.dispose();
  }
}
