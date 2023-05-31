import '../../tac_design_system.dart';

class ShapeProperty implements IComponentProperty {
  @override
  final GComponent component;
  final GShape shape;

  const ShapeProperty({required this.component, required this.shape});

  @override
  Widget getProperty(Map<GComponent, Widget> input) {
    final asd = input[component];
    // input[shape];
    return asd ?? const SizedBox();
  }
}
