// ignore_for_file: deprecated_member_use

library double_tap_to_exit;

import 'package:ecommerce_assignment/utils/app_export.dart';

///  [child] parameter cannot be null, sets the child widget to provide the required function.
///  It is mostly a 'scaffold' widget.
///
///  [snackbar] paramater is optional, shows the snackbar when back-button is pressed for first
///  time , to inform the user that, on pressing again without delay, will exit / close the app.
///  Defaults to snackbar with Text message 'Tap again to exit!'.

class DoubleTapToExit extends StatefulWidget {
  const DoubleTapToExit({
    super.key,
    required this.child,
    this.snackBar,
  });

  final Widget child;
  final SnackBar? snackBar;

  @override
  State<DoubleTapToExit> createState() => _DoubleTapToExitState();
}

class _DoubleTapToExitState extends State<DoubleTapToExit> {
  DateTime? currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime!) >
                const Duration(seconds: 2)) {
          currentBackPressTime = now;
          if (widget.snackBar != null) {
            ScaffoldMessenger.of(context).showSnackBar(widget.snackBar!);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(Lang.of(context).lbl_exit_app),
              ),
            );
          }
          return Future.value(false);
        }
        SystemNavigator.pop();
        return Future.value(true);
      },
      child: widget.child,
    );
  }
}
