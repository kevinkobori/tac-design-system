import 'package:tac_design_system/tac_design_system.dart';

class TacContainer extends StatefulWidget {
  const TacContainer({
    super.key,
    this.onTap,
    this.child,
    this.style,
    this.elevation = .0,
  });

  final void Function()? onTap;
  final Widget? child;
  final TacStyle? style;
  final double elevation;

  @override
  State<TacContainer> createState() => _TacContainerState();
}

class _TacContainerState extends State<TacContainer> {
  bool _isHover = false;
  double _onHoverWidth = 100;

  void action() {}
  @override
  Widget build(BuildContext context) {
    final customShape = widget.style?.shape ?? const CircleBorder();
    final colorScheme = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHover = true);
        setState(() => _onHoverWidth = 200);
      },
      onExit: (_) {
        setState(() => _isHover = false);
        setState(() => _onHoverWidth = 100);
      },
      child: Material(
        elevation: _isHover ? widget.elevation : 0,
        clipBehavior: Clip.antiAlias,
        shape: customShape,
        child: AnimatedContainer(
          curve: Curves.linearToEaseOut,
          duration: const Duration(milliseconds: 200),
          height: 100,
          width: _onHoverWidth,
          onEnd: () {
            // setState(() => _onHoverWidth = 200);
          },
          // padding: _isHover
          //     ? const EdgeInsets.all(20)
          //     : const EdgeInsets.all(0),
          // margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: _isHover ? colorScheme.secondary : colorScheme.primary,
          ),
          child: Text(
            'Custom Widget',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: _isHover
                      ? colorScheme.onSecondary
                      : colorScheme.onPrimary,
                ),
          ),
        ),
      ),
    );
  }
}
