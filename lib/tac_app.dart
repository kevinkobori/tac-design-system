import 'package:tac_design_system/tac_design_system.dart';

class TacApp extends InheritedWidget
//  with MaterialAppAAA
{
  // final TacDesignSystem designSystem;
  final IDesignSystem designSystem;

  TacApp({
    Key? key,
    required this.designSystem,
    title = 'Google',
    theme,
    darkTheme,
    themeMode,
    home,
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
          ),
        );

  // TacApp({
  //   // required this.designSystem,
  //   // required this.designSystem,
  //   super.key,
  //   super.debugShowCheckedModeBanner = false,
  //   super.title = 'Google',
  //   super.theme,
  //   super.darkTheme,
  //   super.home,
  //   super.themeMode,
  // }) : designSystem = TacDesignSystem();
  // : designSystem = TacDesignSystem();

  // static final TacButtons button = TacButtons();

  // static TacApp of(BuildContext context) {
  //   return (context. as TacApp);
  // }

  static TacApp of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<TacApp>() as TacApp);
  }

  @override
  bool updateShouldNotify(TacApp oldWidget) {
    return true;
  }

  // TacApp2({Key? key, required this.actualDate, required Widget child})
  //     : super(key: key, child: child);

  // set setActualDate(DateTime actualDate) => this.designSystem = actualDate;

  // static TacApp of(BuildContext context) {
  //   return (context as TacApp);
  // }

  // static TacDesignSystem of(BuildContext context) {
  //   // TODO: NOW
  //   return _of(context);
  // }

  // static TacDesignSystem _of(
  //   BuildContext context,
  // ) {
  //   return InheritedModel.inheritFrom<TacApp>(context)!.data;
  // }

  // static TacApp of(BuildContext context) {
  //   return (context.dependOnInheritedElement<TacApp>() as TacApp);

  //   // dependOnInheritedWidgetOfExactType<TacApp>() as TacApp);
  // }

  // @override
  // bool updateShouldNotify(covariant InheritedWidget oldWidget) {
  //   // TODO: implement updateShouldNotify
  //   throw UnimplementedError();
  // }

  // @override
  // bool updateShouldNotifyDependent(
  //     covariant InheritedModel oldWidget, Set dependencies) {
  //   // TODO: implement updateShouldNotifyDependent
  //   throw UnimplementedError();
  // }

  // @override
  // bool updateShouldNotify(MewnuApp oldWidget) {
  //   return true;
  // }
}
