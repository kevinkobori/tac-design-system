import '../../../tac_design_system.dart';

abstract class IComponentProperty {
  GComponent get component;
  Widget getProperty(Map<GComponent, Widget> input);
}
