import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AlertPresenter {
  static void presentAlert({
    @required BuildContext context,
    String title,
    String message,
    List<Widget> actions,
  }) {
    showPlatformDialog(
        context: context,
        builder: (context) {
          return PlatformAlertDialog(
            title: title != null ? Text(title) : null,
            content: message != null ? Text(message) : null,
            actions: actions ??
                [
                  PlatformDialogAction(
                    child: Text('OK'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
          );
        });
  }
}