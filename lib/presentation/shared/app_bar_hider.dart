import 'package:flutter/material.dart';
import 'package:yandex_to_do_app/application/application.dart';
import 'package:yandex_to_do_app/presentation/presentation.dart';

class AppBarHider extends StatefulWidget {
  final TextField textField;
  AppBarHider({
    required this.textField,
    Key? key,
  })  : assert(textField.focusNode != null),
        super(key: key);

  @override
  State<AppBarHider> createState() => _AppBarHiderState();
}

class _AppBarHiderState extends State<AppBarHider> with WidgetsBindingObserver {
  late Orientation currentOrientation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    widget.textField.focusNode!.addListener(() {
      handleOrientation();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (WidgetsBinding.instance.window.viewInsets.bottom == 0) {
      widget.textField.focusNode!.unfocus();
      getIt.get<AppBarBloc>().add(const AppBarEvent.show());
    }

    currentOrientation = MediaQuery.of(context).orientation;
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    if (WidgetsBinding.instance.window.viewInsets.bottom == 0) {
      widget.textField.focusNode!.unfocus();
      getIt.get<AppBarBloc>().add(const AppBarEvent.show());
    }

    currentOrientation = MediaQuery.of(context).orientation;
    handleOrientation();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.textField;
  }

  void handleOrientation() {
    if (widget.textField.focusNode!.hasFocus &&
        currentOrientation == Orientation.landscape) {
      getIt.get<AppBarBloc>().add(const AppBarEvent.hide());
    } else {
      getIt.get<AppBarBloc>().add(const AppBarEvent.show());
    }
  }
}
