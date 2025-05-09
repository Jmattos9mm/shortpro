import 'package:flutter/material.dart';

class Drill {
  final String distance;
  final String step;
  final String title;
  final String? subtitle;
  final String imageUrl;

  Drill({
    required this.distance,
    required this.step,
    required this.title,
    this.subtitle,
    required this.imageUrl,
  });

  factory Drill.fromJson(Map<String, dynamic> json) => Drill(
        distance: json["distance"],
        step: json["step"],
        title: json["title"],
        subtitle: json["subtitle"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "distance": distance,
        "step": step,
        "title": title,
        if (subtitle != null) "subtitle": subtitle,
        "imageUrl": imageUrl,
      };
}

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _currentDrillIndex = 0;
  int get currentDrillIndex => _currentDrillIndex;
  set currentDrillIndex(int value) {
    _currentDrillIndex = value;
    notifyListeners();
  }

  List<Drill> _drills = [
    Drill(
        distance: "90",
        step: "1/11",
        title: "Approach shot",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "70",
        step: "2/11",
        title: "Approach shot",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "50",
        step: "3/11",
        title: "Approach shot",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "30",
        step: "4/11",
        title: "Approach shot",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "90",
        step: "5/11",
        title: "Approach shot",
        subtitle: "bunker",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "20",
        step: "6/11",
        title: "Up-and-down",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "10",
        step: "7/11",
        title: "Up-and-down",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "5",
        step: "8/11",
        title: "Up-and-down",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "30",
        step: "9/11",
        title: "Up-and-down",
        subtitle: "bunker",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "10",
        step: "10/11",
        title: "Up-and-down",
        subtitle: "bunker",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
    Drill(
        distance: "10",
        step: "11/11",
        title: "Up-and-down",
        subtitle: "Lob over bunker",
        imageUrl:
            "https://res.cloudinary.com/djn8h8vbi/image/upload/v1746649660/campo_fmc4kj.png"),
  ];

  List<Drill> get drills => _drills;

  void setDrills(List<Drill> drillsList) {
    _drills = drillsList;
    notifyListeners();
  }

  // Adicione essa linha aqui:
  Map<int, int> drillScores = {};
}
