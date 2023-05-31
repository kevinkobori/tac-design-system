import 'package:tac_design_system/tac_design_system.dart';

class ComponentComposite implements IComposite {
  final List<IComponentProperty> validations;

  ComponentComposite(this.validations);

  @override
  Widget build(
      {required GComponent component, required Map<GComponent, Widget> input}) {
    Widget? error;
    for (final validation
        in validations.where((v) => v.component == component)) {
      error = validation.getProperty(input);
      return error;
    }
    return error ?? const SizedBox();
  }
}
