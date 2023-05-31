import '../../tac_design_system.dart';

class ComponentBuilder {
  static ComponentBuilder? _instance;
  final GComponent _component;
  final List<IComponentProperty> _properties = [];

  ComponentBuilder._(this._component);

  static ComponentBuilder component(GComponent component) {
    _instance = ComponentBuilder._(component);
    return _instance!;
  }

  ComponentBuilder shape(GShape shape) {
    _properties.add(ShapeProperty(component: _component, shape: shape));
    return this;
  }

  // ComponentBuilder shape(GShape shape) {
  //   _properties.add(ShapeProperty(component: _component, shape: shape));
  //   return this;
  // }

  List<IComponentProperty> build() => _properties;
}
