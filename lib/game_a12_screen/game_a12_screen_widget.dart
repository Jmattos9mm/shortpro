// Esta versão usa Stack + Positioned para manter os botões acima da navbar
// e permitir scroll total no conteúdo visual

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../app_state.dart';
import '../game_a01_screen/game_a01_screen_widget.dart';
import 'game_a12_screen_model.dart';
export 'game_a12_screen_model.dart';

String getScoreTag(int total) {
  if (total >= 265) return 'Tour Range';
  if (total >= 195) return 'Scratch Amador';
  if (total >= 165) return 'Low Handicap';
  if (total >= 115) return 'Mid Handicap';
  return 'High Handicap';
}

Color getScoreColor(int total) {
  if (total >= 265) return Color(0xFFFF00AA);
  if (total >= 195) return Color(0xFFF8D800);
  if (total >= 165) return Color(0xFF260097);
  if (total >= 115) return Color(0xFF29C1BC);
  return Color(0xFF3BAB4C);
}

class GameA12ScreenWidget extends StatelessWidget {
  const GameA12ScreenWidget({super.key});

  static String routeName = 'GameA12_Screen';
  static String routePath = '/gameA12Screen';

  final List<String> drillLabels = const [
    'Approach shots 90 yds',
    'Approach shots 70 yds',
    'Approach shots 50 yds',
    'Approach shots 30 yds',
    'Approach shots 90 yds bunker',
    'Up-and-down 20 yds',
    'Up-and-down 10 yds',
    'Up-and-down 5 yds',
    'Up-and-down 30 yds bunker',
    'Up-and-down 10 yds bunker',
    'Lob shot over bunker 10 yds',
  ];

  @override
  Widget build(BuildContext context) {
    final appState = FFAppState();
    final total = appState.drillScores.values.fold(0, (a, b) => a + b);
    final tag = getScoreTag(total);
    final tagColor = getScoreColor(total);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF0F0E9),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 160),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset('assets/images/Bandeira_logo.png',
                          width: 50, height: 50),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Total Score',
                      style: GoogleFonts.inter(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF7B7B7B),
                      ),
                    ),
                    Text(
                      'Wedge Pro Challenge',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF515151),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFCFBFB),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: List.generate(drillLabels.length, (index) {
                          final score = appState.drillScores[index] ?? 0;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    drillLabels[index],
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF515151),
                                    ),
                                  ),
                                ),
                                Text(
                                  score.toString(),
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    color: const Color(0xFF515151),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5E5E1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: tagColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              tag,
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'TOTAL',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '$total',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              context.pushReplacementNamed(
                                  GameA01ScreenWidget.routeName);
                            },
                            text: 'Back',
                            options: FFButtonOptions(
                              height: 44,
                              color: const Color(0xFFA6A3A3),
                              textStyle: GoogleFonts.interTight(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Save clicked');
                            },
                            text: 'Save',
                            options: FFButtonOptions(
                              height: 44,
                              color: const Color(0xFFD06838),
                              textStyle: GoogleFonts.interTight(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F0EA),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: [
                          _scoreRow(
                              'Tour Range', '265-UP pts', Color(0xFFFF00AA)),
                          _scoreRow('Scratch Amador', '195–264 pts',
                              Color(0xFFF8D800)),
                          _scoreRow(
                              'Low Handicap', '165–194 pts', Color(0xFF260097)),
                          _scoreRow(
                              'Mid-Handicap', '115–164 pts', Color(0xFF29C1BC)),
                          _scoreRow(
                              'High Handicap', '0–114 pts', Color(0xFF3BAB4C)),
                          const SizedBox(height: 12),
                          Text(
                            'Score Range',
                            style: GoogleFonts.inter(
                              fontSize: 24,
                              color: const Color(0xFFC8C8C8),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 72,
            child: Row(
              children: [
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () {
                      context
                          .pushReplacementNamed(GameA01ScreenWidget.routeName);
                    },
                    text: 'Back',
                    options: FFButtonOptions(
                      height: 44,
                      color: const Color(0xFFA6A3A3),
                      textStyle: GoogleFonts.interTight(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Save clicked');
                    },
                    text: 'Save',
                    options: FFButtonOptions(
                      height: 44,
                      color: const Color(0xFFD06838),
                      textStyle: GoogleFonts.interTight(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _scoreRow(String label, String range, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: const Color(0xFF858585),
              ),
            ),
          ),
          Text(
            range,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF858585),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
