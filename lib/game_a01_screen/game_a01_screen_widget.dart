import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_a01_screen_model.dart';
export 'game_a01_screen_model.dart';
import '../app_state.dart';

class GameA01ScreenWidget extends StatefulWidget {
  const GameA01ScreenWidget({super.key});

  static String routeName = 'GameA01_Screen';
  static String routePath = '/gameA01Screen';

  @override
  State<GameA01ScreenWidget> createState() => _GameA01ScreenWidgetState();
}

class _GameA01ScreenWidgetState extends State<GameA01ScreenWidget> {
  late GameA01ScreenModel _model;
  late Drill currentDrill;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameA01ScreenModel());

    _model.tfInside6TextController ??= TextEditingController();
    _model.tfInside6FocusNode ??= FocusNode();

    _model.tf6to15TextController ??= TextEditingController();
    _model.tf6to15FocusNode ??= FocusNode();

    _model.tf15to30TextController ??= TextEditingController();
    _model.tf15to30FocusNode ??= FocusNode();

    _model.tfOutside30TextController ??= TextEditingController();
    _model.tfOutside30FocusNode ??= FocusNode();

    currentDrill = FFAppState().drills[FFAppState().currentDrillIndex];
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<FFAppState>(context, listen: true);
    final drill = appState.drills[appState.currentDrillIndex];

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF0F0E9),
        body: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFF0F0E9), Colors.white],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35.0, 65.0, 35.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            currentDrill.distance,
                            style: GoogleFonts.inter(
                              color: Color(0xFFD06838),
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                          SizedBox(
                              width:
                                  4.0), // espaço curto entre número e unidade
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 4.0), // alinha visualmente com número
                            child: Text(
                              'yds',
                              style: GoogleFonts.inter(
                                color: Color(0xFFD06838),
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        currentDrill.step,
                        style: GoogleFonts.inter(
                          color: Color(0xFFD06838),
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      drill.title,
                      style: GoogleFonts.inter(
                        color: Color(0xFF515151),
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  if (drill.subtitle != null)
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        drill.subtitle!,
                        style: GoogleFonts.inter(
                          color: Color(0xFF515151),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        drill.imageUrl,
                        width: 252.7,
                        height: 211.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Text(
                        '8 shots and\nmark your score',
                        style: GoogleFonts.inter(
                          color: Color(0xFF515151),
                          fontWeight: FontWeight.w300,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 34.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0EA),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Inside 6 ft',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF515151),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  width: 80.0,
                                  child: TextFormField(
                                    controller: _model.tfInside6TextController,
                                    focusNode: _model.tfInside6FocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.tfInside6TextController',
                                      Duration(milliseconds: 130),
                                      () async {
                                        _model.inside6 =
                                            (String tfInside6Value) {
                                          return int.parse(
                                              tfInside6Value ?? '0');
                                        }(_model.tfInside6TextController.text);
                                        safeSetState(() {});
                                        if ((_model.inside6 > 8) ||
                                            ((_model.outside30 +
                                                    _model.ft15to30 +
                                                    _model.ft6to15 +
                                                    _model.inside6) >
                                                8)) {
                                          ScaffoldMessenger.of(context)
                                              .clearSnackBars();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Maximum of 8 shots allowed!',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 3000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                          _model.inside6 = 0;
                                          safeSetState(() {});
                                          safeSetState(() {
                                            _model.tfInside6TextController
                                                ?.clear();
                                          });
                                        }
                                      },
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      hintText: '0',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFE5E5E1),
                                      hoverColor: Color(0xFFD8D8D8),
                                    ),
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF7A7B7D),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17.0,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLength: 1,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType: TextInputType.number,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    validator: _model
                                        .tfInside6TextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 9.0, 0.0, 0.0),
                          child: Container(
                            height: 34.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0EA),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Between 6 - 15 ft',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    width: 80.0,
                                    child: TextFormField(
                                      controller: _model.tf6to15TextController,
                                      focusNode: _model.tf6to15FocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.tf6to15TextController',
                                        Duration(milliseconds: 130),
                                        () async {
                                          _model.ft6to15 =
                                              (String tf6to15Value) {
                                            return int.parse(
                                                tf6to15Value ?? '0');
                                          }(_model.tf6to15TextController.text);
                                          safeSetState(() {});
                                          if ((_model.ft6to15 > 8) ||
                                              ((_model.outside30 +
                                                      _model.ft15to30 +
                                                      _model.ft6to15 +
                                                      _model.inside6) >
                                                  8)) {
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Maximum of 8 shots allowed!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                            _model.ft6to15 = 0;
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model.tf6to15TextController
                                                  ?.clear();
                                            });
                                          }
                                        },
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText: '0',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFE5E5E1),
                                        hoverColor: Color(0xFFD8D8D8),
                                      ),
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF7A7B7D),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17.0,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      validator: _model
                                          .tf6to15TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 9.0, 0.0, 0.0),
                          child: Container(
                            height: 34.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0EA),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Between 15 - 30 ft',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    width: 80.0,
                                    child: TextFormField(
                                      controller: _model.tf15to30TextController,
                                      focusNode: _model.tf15to30FocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.tf15to30TextController',
                                        Duration(milliseconds: 130),
                                        () async {
                                          _model.ft15to30 =
                                              (String tf15to30Value) {
                                            return int.parse(
                                                tf15to30Value ?? '0');
                                          }(_model.tf15to30TextController.text);
                                          safeSetState(() {});
                                          if ((_model.ft15to30 > 8) ||
                                              ((_model.outside30 +
                                                      _model.ft15to30 +
                                                      _model.ft6to15 +
                                                      _model.inside6) >
                                                  8)) {
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Maximum of 8 shots allowed!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                            _model.ft15to30 = 0;
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model.tf15to30TextController
                                                  ?.clear();
                                            });
                                          }
                                        },
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText: '0',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFE5E5E1),
                                        hoverColor: Color(0xFFD8D8D8),
                                      ),
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF7A7B7D),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17.0,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      validator: _model
                                          .tf15to30TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 9.0, 0.0, 0.0),
                          child: Container(
                            height: 34.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0EA),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Outside 30 ft',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    width: 80.0,
                                    child: TextFormField(
                                      controller:
                                          _model.tfOutside30TextController,
                                      focusNode: _model.tfOutside30FocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.tfOutside30TextController',
                                        Duration(milliseconds: 130),
                                        () async {
                                          _model.outside30 =
                                              (String tfOutside30Value) {
                                            return int.parse(
                                                tfOutside30Value ?? '0');
                                          }(_model.tfOutside30TextController
                                                  .text);
                                          safeSetState(() {});
                                          if ((_model.outside30 > 8) ||
                                              ((_model.outside30 +
                                                      _model.ft15to30 +
                                                      _model.ft6to15 +
                                                      _model.inside6) >
                                                  8)) {
                                            ScaffoldMessenger.of(context)
                                                .clearSnackBars();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Maximum of 8 shots allowed!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                            _model.outside30 = 0;
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model.tfOutside30TextController
                                                  ?.clear();
                                            });
                                          }
                                        },
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText: '0',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFE5E5E1),
                                        hoverColor: Color(0xFFD8D8D8),
                                      ),
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF7A7B7D),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17.0,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      validator: _model
                                          .tfOutside30TextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 9.0, 0.0, 0.0),
                          child: Container(
                            height: 34.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F0EA),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'TOTAL',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Text(
                                    ((_model.outside30 * 0) +
                                            (_model.ft15to30 * 1) +
                                            (_model.ft6to15 * 3) +
                                            (_model.inside6 * 5))
                                        .toString(),
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 18.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              final appState = Provider.of<FFAppState>(context,
                                  listen: false);

                              if (appState.currentDrillIndex == 0) {
                                context.goNamed('ChoosePlay_Screen');
                              } else {
                                setState(() {
                                  appState.currentDrillIndex--;
                                });
                                context.pushReplacementNamed(
                                    GameA01ScreenWidget.routeName);
                              }
                            },
                            text: 'Back',
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFA6A3A3),
                              textStyle: GoogleFonts.interTight(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0,
                              ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 18.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              final appState = Provider.of<FFAppState>(context,
                                  listen: false);
                              if (appState.currentDrillIndex <
                                  appState.drills.length - 1) {
                                setState(() => appState.currentDrillIndex++);
                                context.pushReplacementNamed(
                                    GameA01ScreenWidget.routeName);
                              } else {
                                context.pushReplacementNamed('GameA12_Screen');
                              }
                            },
                            text: 'Next',
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 30.0,
                              color: Color(0xFF3BAB4C),
                              textStyle: GoogleFonts.interTight(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0,
                              ),
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
