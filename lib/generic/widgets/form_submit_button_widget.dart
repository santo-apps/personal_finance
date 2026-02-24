import 'package:flutter/material.dart';

import 'custom_raised_button_widget.dart';

class FormSubmitButtonWidget extends CustomRaisedButton {
  FormSubmitButtonWidget({
    super.key,
    @required String? title,
    super.borderRadius = 10.0,
    super.onPressed,
  }) : super(
          child: Text(title!,
              style: const TextStyle(color: Colors.white, fontSize: 18.0)),
          color: Colors.red,
        );
}
