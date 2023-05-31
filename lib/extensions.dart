import 'package:tac_design_system/tac_design_system.dart';

extension BuildContextExtension on BuildContext {
  GoogleApp get google => GoogleApp.of(this);
  // Widget component(GComponent component) =>
  //     GoogleApp.of(this).designSystem.component(component);

  //  late Widget _component;

  // Widget get component =>
  //     _component;

  // set component(GComponent component) =>
  //     _component = GoogleApp.of(this).designSystem.component(this, component);

  // late GComponent aaaaaaa;

  // GComponent get button => GoogleApp.of(this).designSystem.component(this, asd);

  // @override
  // set button(GComponent asd) => aaaaaaa = asd;

  // TacButton get button {
  //   return TacApp.of(this).designSystem.button;
  // }

  // TacCard get card {
  //   return TacApp.of(this).designSystem.card;
  // }

// class A<E extends num> {}

// var a = A<int>();
}
