library tac_design_system;

import 'package:tac_design_system/tac_design_system.dart';

export 'package:flutter/material.dart';
// export 'package:mix/mix.dart';
export 'package:tac_design_system/builders/builders.dart';
export 'package:tac_design_system/tac_actions.dart';
export 'package:tac_design_system/tac_app.dart';
export 'package:tac_design_system/tac_button.dart';
export 'package:tac_design_system/tac_card.dart';
export 'package:tac_design_system/tac_colors.dart';
export 'package:tac_design_system/tac_container.dart';
export 'package:tac_design_system/tac_shape.dart';
export 'package:tac_design_system/tac_style.dart';

part 'builders/components/factories.dart';

// class MewnuApp<T extends MaterialApp> extends InheritedWidget {
//   DateTime actualDate;

//   MewnuApp({Key? key, required this.actualDate, required Widget child})
//       : super(key: key, child: child);

//   set setActualDate(DateTime actualDate) => this.actualDate = actualDate;

//   static MewnuApp of(BuildContext context) {
//     return (context.dependOnInheritedWidgetOfExactType<MewnuApp>() as MewnuApp);
//   }

//   @override
//   bool updateShouldNotify(MewnuApp oldWidget) {
//     return true;
//   }
// }

// class TacThemeData extends ThemeData {
//   TacThemeData();
// }

// class AppThemeData {
//   final BorderRadius borderRadius = BorderRadius.circular(8);

//   final Color colorYellow = const Color(0xffffff00);
//   final Color colorPrimary = const Color(0xffabcdef);

//   ThemeData get materialTheme {
//     return ThemeData(
//         primaryColor: colorPrimary
//     );
//   }
// }
// class AppTheme extends StatelessWidget {
//   final Widget? child;

//   const AppTheme({super.key, this.child});

//   @override
//   Widget build(BuildContext context) {
//     final themeData = AppThemeData(context);
//     return Provider.value(value: themeData, child: child);
//   }
// }

// extension BuildContextExtension on BuildContext {
//   AppThemeData get appTheme {
//     return watch<AppThemeData>();
//   }
// }

// class _InheritedTheme extends InheritedTheme {
//   const _InheritedTheme({
//     required this.theme,
//     required super.child,
//   });

//   final Theme theme;

//   @override
//   Widget wrap(BuildContext context, Widget child) {
//     return Theme(data: theme.data, child: child);
//   }

//   @override
//   bool updateShouldNotify(_InheritedTheme old) => theme.data != old.theme.data;
// }

// class TacTheme extends Theme {
//   const TacTheme({super.key, required super.data, required super.child});

//   static final ThemeData _kFallbackTheme = ThemeData.fallback();

//   // @override
//   static ThemeData of(BuildContext context) {
//     final _InheritedTheme? inheritedTheme =
//         context.dependOnInheritedWidgetOfExactType<_InheritedTheme>();
//     final MaterialLocalizations? localizations =
//         Localizations.of<MaterialLocalizations>(context, MaterialLocalizations);
//     final ScriptCategory category =
//         localizations?.scriptCategory ?? ScriptCategory.englishLike;
//     final ThemeData theme = inheritedTheme?.theme.data ?? _kFallbackTheme;
//     return ThemeData.localize(
//         theme, theme.typography.geometryThemeFor(category));
//   }
// }

// class TacApp2 extends MaterialApp {
//   // final TacDesignSystem designSystem;

//   const TacApp2({
//     // required this.designSystem,
//     super.key,
//     super.debugShowCheckedModeBanner = false,
//     super.title = 'Google',
//     super.theme,
//     super.home,
//     super.themeMode,
//   });

//   // set setActualDate(DateTime designSystem) => this.designSystem = designSystem;

//   // static TacApp of(BuildContext context) {
//   //   return (context.dependOnInheritedWidgetOfExactType<TacApp>() as TacApp);
//   // }

//   // @override
//   // bool updateShouldNotify(TacApp oldWidget) {
//   //   return true;
//   // }
// }

// const asd = TacApp();

///________________
// final tac = TacDesignSystem();

// TacElevatedButton elevatedButton = const TacElevatedButton();
// final aaaaaa = tac.button.elevated(() {});

// class TacElevatedButton extends ElevatedButton {
//   const TacElevatedButton(
//       {super.key, super.onPressed, super.child, super.style});

//   static ButtonStyle beveledRectangle() {
//     return ElevatedButton.styleFrom(
//       shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
//     );
//   }
// }

// class TacContainer {

// }

// class TacButton {
//   /// Elevated > beveledRectangle
//   TacButton();
//   // : shape = const TacShape();

//   // final TacShape shape;

//   // TacShape get elevated => TacShape;

//   // Widget action(void Function()? onTap, {TacStyle? style}) {
//   //   return TacContainer(
//   //     onTap: onTap,
//   //     style: style,
//   //     child: const Text('Button'),
//   //   );
//   // }
// }

/// context > button > elevated > beveledRectangle > action
///

abstract class IDesignSystem {
  late TacButton button;
  late TacCard card;
}

/// [Atomic_Design]
class TacDesignSystem implements IDesignSystem {
  TacDesignSystem()
      : _button = const TacButton(),
        _card = const TacCard();

  /// [Components]
  /// []
  /// [Button]
  TacButton _button;

  @override
  TacButton get button => _button;

  @override
  set button(TacButton button) => _button = button;

  /// [Container]

  /// []
  /// []
  /// [Card]
  TacCard _card;

  @override
  TacCard get card => _card;

  @override
  set card(TacCard card) => _card = card;

  /// [Styles]
  /// [Shape]

  /// [Sizes]
  /// [Padding]
  /// [Margin]

  /// [Theme]
  /// [Colors]
}

// class GoogleDesignSystem {
//   const GoogleDesignSystem._privateConstructor();

//   static const GoogleDesignSystem instance =
//       GoogleDesignSystem._privateConstructor();

//   GoogleButton get button => GoogleButton.instance;
// }

// class GoogleButton {
//   const GoogleButton._privateConstructor();

//   static const GoogleButton instance = GoogleButton._privateConstructor();

//   GoogleShape get shape => GoogleShape.instance;
// }

// class GoogleShape {
//   const GoogleShape._privateConstructor();

//   static const GoogleShape instance = GoogleShape._privateConstructor();

//   GoogleAction get action => GoogleAction.instance;
// }

// class GoogleAction {
//   const GoogleAction._privateConstructor();

//   static const GoogleAction instance = GoogleAction._privateConstructor();

//   void onTap(void Function()? onTap) => onTap?.call();
// }

// GoogleDesignSystem google = GoogleDesignSystem.instance;
// final button = google.button.shape.action.onTap(() {});


