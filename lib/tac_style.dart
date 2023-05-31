import 'package:tac_design_system/tac_design_system.dart';

abstract class Style {
  late TacColor color;
  late TacShape shape;
}

class TacStyle implements Style {
  TacStyle({
    required this.color,
    required this.shape,
  });

  @override
  TacColor color;

  @override
  TacShape shape;
}
