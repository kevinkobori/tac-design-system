import 'package:tac_design_system/tac_design_system.dart';

mixin IComposite {
  Widget build(
      {required GComponent component, required Map<GComponent, Widget> input});
}
