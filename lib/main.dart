import 'package:tac_design_system/tac_design_system.dart';

final customButton = TacButton(
  onTap: () {},
  style: TacStyle(
    color: TacColor(0x3336FF),
    shape: TacShape(
      side: const BorderSide(
        color: Colors.blue,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
  ),
);
