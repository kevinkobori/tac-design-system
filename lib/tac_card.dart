import 'package:tac_design_system/tac_design_system.dart';

class TacCard extends TacContainer {
  const TacCard({
    super.key,
    super.onTap,
    super.child,
    super.style,
    super.elevation,
  }) : shape = const TacShape();

  final TacShape shape;

  // Widget elevated(double elevation) {
  // shape.beveledRectangle();
  // shape
  // return shape.beveledRectangle;
  // }

  // beveledRectangle

  // static ButtonStyle beveledRectangle() {
  //   return ElevatedButton.styleFrom(
  //     shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //   );
  // }
}
