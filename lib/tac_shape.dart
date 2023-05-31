import 'package:tac_design_system/tac_design_system.dart';

class TacShape extends OutlinedBorder {
  const TacShape({
    super.side,
    this.borderRadius = BorderRadius.zero,
  });

  final BorderRadiusGeometry borderRadius;

  ShapeBorder get beveledRectangle => BeveledRectangleBorder(
        side: side,
        borderRadius: borderRadius,
      );

  //   TacShape(
  //   side: const BorderSide(
  //     color: Colors.blue,
  //     width: 1,
  //   ),
  //   borderRadius: BorderRadius.circular(
  //     10,
  //   ),
  // ),

  @override
  OutlinedBorder copyWith({BorderSide? side}) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getOuterPath
    throw UnimplementedError();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // TODO: implement paint
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }

  // Widget beveledRectangle(void Function()? onTap) => TacContainer(
  //       onTap: onTap,
  //       style: TacStyle.beveledRectangle,
  //     );
  // // .action(onPressed, style: TacStyle.beveledRectangle());
}
