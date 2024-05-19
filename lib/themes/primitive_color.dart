import 'dart:ui';

class PrimitiveColor {
  final PrimitivePalettesColors gray;
  final PrimitivePalettesColors blue;
  final PrimitivePalettesColors skyBlue;
  final PrimitivePalettesColors brown;
  final PrimitivePalettesColors red;
  final PrimitivePalettesColors green;
  final PrimitivePalettesColors translucentWhite;
  final PrimitivePalettesColors translucentBlack;
  const PrimitiveColor({
    required this.gray,
    required this.blue,
    required this.skyBlue,
    required this.brown,
    required this.red,
    required this.green,
    required this.translucentWhite,
    required this.translucentBlack,
  });
}

class PrimitivePalettesColors {
  final Color? tp5;
  final Color tp10;
  final Color tp20;
  final Color tp30;
  final Color tp40;
  final Color tp50;
  final Color tp60;
  final Color tp70;
  final Color tp80;
  final Color tp90;
  final Color? tp100;

  const PrimitivePalettesColors({
    this.tp5,
    required this.tp10,
    required this.tp20,
    required this.tp30,
    required this.tp40,
    required this.tp50,
    required this.tp60,
    required this.tp70,
    required this.tp80,
    required this.tp90,
    this.tp100,
  });
}
