import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_a02_screen_model.dart';
export 'game_a02_screen_model.dart';

class GameA02ScreenWidget extends StatefulWidget {
  const GameA02ScreenWidget({super.key});

  static String routeName = 'GameA_02_Screen';
  static String routePath = '/gameA02Screen';

  @override
  State<GameA02ScreenWidget> createState() => _GameA02ScreenWidgetState();
}

class _GameA02ScreenWidgetState extends State<GameA02ScreenWidget> {
  late GameA02ScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameA02ScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            height: 758.9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFF0F0E9), Colors.white],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35.0, 65.0, 35.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '70',
                          style: GoogleFonts.inter(
                            color: Color(0xFFD06838),
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'yds',
                                style: GoogleFonts.inter(
                                  color: Color(0xFFD06838),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, -1.0),
                          child: Text(
                            '2/11',
                            style: GoogleFonts.inter(
                              color: Color(0xFFD06838),
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Approach shots',
                      style: GoogleFonts.inter(
                        color: Color(0xFF515151),
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/campo.png',
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
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
                                  'Outside 30 ft',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF515151),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0,
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
                                    'Inside 15 ft a 30 ft',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
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
                                    'Inside 6 ft a 15 ft',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
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
                                    'Inside 6 ft',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF515151),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17.0,
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
                                    '0',
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
                            onPressed: () async {
                              context.pushNamed(GameA01ScreenWidget.routeName);
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
                            onPressed: () async {
                              context.pushNamed(GameA03ScreenWidget.routeName);
                            },
                            text: 'Next',
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF3BAB4C),
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
