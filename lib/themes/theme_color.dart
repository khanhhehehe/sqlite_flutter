import 'dart:ui';

class ThemeColorApp {
  final ThemePalettesColors neutral;
  final ThemePalettesColors primary;
  final ThemePalettesColors secondary;
  final ThemePalettesColors accent;
  final ThemePalettesColors danger;
  final ThemePalettesColors success;
  final ThemePalettesColors brand;
  final ThemePalettesColors translucentLayerWhite;
  final ThemePalettesColors translucentLayerBlack;
  const ThemeColorApp({
    required this.neutral,
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.danger,
    required this.success,
    required this.brand,
    required this.translucentLayerWhite,
    required this.translucentLayerBlack,
  });
}

class ThemePalettesColors {
  final Color? tp5;
  final Color? tp10;
  final Color? tp20;
  final Color? tp30;
  final Color? tp40;
  final Color? tp50;
  final Color? tp60;
  final Color? tp70;
  final Color? tp80;
  final Color? tp90;
  final Color? tp100;
  final Color? blue;
  final Color? skyBlue;
  final Color? lightBlue;

  const ThemePalettesColors({
    this.tp5,
    this.tp10,
    this.tp20,
    this.tp30,
    this.tp40,
    this.tp50,
    this.tp60,
    this.tp70,
    this.tp80,
    this.tp90,
    this.tp100,
    this.blue,
    this.skyBlue,
    this.lightBlue,
  });
}
