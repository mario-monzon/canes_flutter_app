import 'package:flutter/material.dart';

import '../../design/text.dart';

/// A checkbox with label and validation prepared to be included inside a form
class CheckboxFormField extends StatelessWidget {
  // ignore: public_member_api_docs
  const CheckboxFormField({
    @required this.value,
    @required this.label,
    this.onChanged,
    this.validator,
    this.wrapError,
  });

  /// Wether the checkbox is checked or not
  final bool value;

  /// The label text to show beside the checkbox
  final Widget label;

  // ignore: public_member_api_docs
  final void Function(bool checked) onChanged;

  /// Form validator, if null it's ok
  /// if it returns a value, there's a validation error
  final String Function(bool checked) validator;

  /// If true the error Text will not occupy space when empty
  final bool wrapError;

  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      builder: (state) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Checkbox(
                value: value,
                onChanged: onChanged,
              ),
              Flexible(
                child: label,
              ),
            ],
          ),
          // TODO(dani): animate this instead of using a sudden
          //  visible or not change?
          Visibility(
            visible: state.errorText != null,
            child: SizedBox(
              width: double.infinity,
              child: Text(
                state.errorText ?? '',
                softWrap: true,
                style: TextStyle(
                  color: Theme.of(context).errorColor,
                  fontSize: TextSizes.verySmall,
                ),
              ),
            ),
          ),
        ],
      ),
      validator: validator,
    );
  }
}
