part of tac_design_system;
// import '../tac_design_system.dart';

// class Google {
//   Google();
//   static GComponent component = GComponent.container;
//   static GShape shape = GShape.rounded;
// }

final componentData = {
  GComponent.button: Container(
    color: Colors.pink,
    height: 200,
    width: 120,
  ),
  GComponent.card: FloatingActionButton(
    onPressed: () {},
    tooltip: 'Increment',
    child: const Icon(Icons.add),
  ),
  GComponent.appBar: AppBar(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      )
};

/// [Atomic_Design]
class GoogleDesignSystem {
  GoogleDesignSystem()
  // : _button = const TacButton(),
  //   _card = const TacCard()
  ;

  /// [Components]
  /// []
  Widget component(GComponent component) {
    final Widget widget =
        validation.build(component: component, input: componentData);

    print('TUDO CERTO');
    return widget;
  }

  /// [Button]
  // TacButton _button;

  // @override
  // TacButton get button => _button;

  // @override
  // set button(TacButton button) => _button = button;

  // /// [Container]

  // /// []
  // /// []
  // /// [Card]
  // TacCard _card;

  // @override
  // TacCard get card => _card;

  // @override
  // set card(TacCard card) => _card = card;

  // /// [Styles]
  // /// [Shape]

  // /// [Sizes]
  // /// [Padding]
  // /// [Margin]

  // /// [Theme]
  // /// [Colors]
}

class GoogleApp extends InheritedWidget {
  final GoogleDesignSystem designSystem;

  GoogleApp({
    required this.designSystem,
    title = 'Google',
    theme,
    darkTheme,
    themeMode,
    home,
    builder,
    Key? key,
  }) : super(
          key: key,
          child: MaterialApp(
            key: key,
            debugShowCheckedModeBanner: false,
            title: title,
            theme: theme,
            darkTheme: darkTheme,
            themeMode: themeMode,
            home: home,
            builder: builder,
          ),
        );

  static GoogleApp of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<GoogleApp>()
        as GoogleApp);
  }

  @override
  bool updateShouldNotify(GoogleApp oldWidget) {
    return true;
  }
}

enum GComponent {
  container,
  appBar,
  button,
  card,
}

enum GShape {
  rounded,
  beveledRectangle,
}

final IComposite validation = ComponentComposite([
  ...ComponentBuilder.component(GComponent.button)
      .shape(GShape.rounded)
      .build(),
  ...ComponentBuilder.component(GComponent.appBar)
      .shape(GShape.rounded)
      .build(),
  ...ComponentBuilder.component(GComponent.card)
      .shape(GShape.beveledRectangle)
      .build()
]);

// Widget component(BuildContext context, GComponent GComponent) {
//   final formData = {
//     GComponent.button: Container(
//       color: Colors.pink,
//       height: 200,
//       width: 120,
//     ),
//     GComponent.card: const MyWidget(),
//     GComponent.appBar: AppBar(
//       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//     )
//   };

//   final Widget widget = validation.validate(component: GComponent, input: formData);

//   print('TUDO CERTO');
//   return widget;
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card();
  }
}
