import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class StandardTextFormField extends StatefulWidget {
  final GlobalKey<FormFieldState>? fieldKey;

  final String label;
  final String? initialValue;
  final bool hasClearButton;
  final bool hasClearButtonSpace;
  final bool hasTextObscuration;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final IconData? icon;
  final InputDecoration? decoration;

  final TextInputType keyboardType;
  final EdgeInsets padding;

  final void Function(bool hasFocus)? onFocusChanged;
  final void Function(String? value)? onChanged;
  final void Function(String? value)? onFieldSubmited;
  final FormFieldValidator<String?>? validator;
  final FocusNode? focusNode;

  final Color hideClearButtonColor;
  final Color showClearButtonColor;
  final List<MaskTextInputFormatter>? masks;

  const StandardTextFormField({
    this.fieldKey,
    required this.label,
    this.initialValue,
    this.hasClearButton = true,
    this.hasClearButtonSpace = true,
    this.hasTextObscuration = false,
    this.maxLength,
    this.minLines = 1,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.padding = EdgeInsets.zero,
    this.onFocusChanged,
    required this.onChanged,
    this.onFieldSubmited,
    this.validator,
    this.focusNode,
    this.hideClearButtonColor = Colors.white70,
    this.showClearButtonColor = Colors.black38,
    this.masks,
    this.icon,
    this.decoration,
  });

  @override
  State<StandardTextFormField> createState() => _StandardTextFormFieldState();
}

class _StandardTextFormFieldState extends State<StandardTextFormField> {
  GlobalKey<FormFieldState> innerFormKey = GlobalKey<FormFieldState>();

  bool obscureText = false;
  bool isInvalid = false;

  @override
  void initState() {
    obscureText = widget.hasTextObscuration;
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.fieldKey != null) innerFormKey = widget.fieldKey!;

    final enabled = widget.onChanged != null;
    final textTheme = Theme.of(context).textTheme;
    final hideClearButton =
        widget.initialValue == null || !widget.hasClearButton || !enabled;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.icon != null)
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 18, bottom: 24),
            child: Icon(widget.icon, color: Colors.grey[700]),
          ),
        Expanded(
          child: Focus(
            onFocusChange: (hasFocus) {
              if (widget.onFocusChanged != null)
                widget.onFocusChanged!(hasFocus);
              innerFormKey.currentState?.validate();
            },
            child: Builder(
              builder: (context) {
                return TextFormField(
                  key: innerFormKey,
                  enabled: enabled,
                  obscureText: obscureText,
                  focusNode: widget.focusNode,
                  controller: Focus.of(context).hasFocus
                      ? null
                      : TextEditingController.fromValue(
                          TextEditingValue(
                            text: widget.initialValue ?? '',
                            selection: TextSelection.collapsed(
                                offset: widget.initialValue?.length ?? 0),
                          ),
                        ),
                  onChanged: widget.onChanged,
                  decoration: widget.decoration ??
                      buildInputDecoration(label: widget.label),
                  style: textTheme.subtitle1?.copyWith(
                      color: enabled ? Colors.black : Colors.black38),
                  maxLength: widget.maxLength,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  minLines: widget.minLines,
                  maxLines: widget.maxLines,
                  keyboardType: widget.keyboardType,
                  inputFormatters: widget.masks ?? <TextInputFormatter>[],
                  textInputAction:
                      Platform.isAndroid ? TextInputAction.none : null,
                  onFieldSubmitted: widget.onFieldSubmited,
                  validator: (value) {
                    if (Focus.of(context).hasFocus) {
                      setState(() => isInvalid = false);
                      return null;
                    }

                    final validation = widget.validator != null
                        ? widget.validator!(value)
                        : null;
                    WidgetsBinding.instance.addPostFrameCallback(
                      (_) => setState(() => isInvalid = validation != null),
                    );

                    return validation;
                  },
                  buildCounter: widget.maxLength == null
                      ? null
                      : (_,
                          {required currentLength,
                          maxLength,
                          required isFocused}) {
                          return Container(
                              transform: Matrix4.translationValues(13, 0, 0),
                              child: Text(
                                '$currentLength/$maxLength',
                                style: textTheme.subtitle2?.copyWith(
                                    color: enabled && isInvalid
                                        ? Colors.red[900]
                                        : Colors.grey[600]),
                              ));
                        },
                );
              },
            ),
          ),
        ),
        if (widget.hasClearButtonSpace)
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 12, bottom: 24),
            child: InkWell(
              onTap: hideClearButton || widget.onChanged == null
                  ? null
                  : () async {
                      widget.onChanged!(null);
                      FocusScope.of(context).unfocus();

                      Future.delayed(const Duration(milliseconds: 20),
                          innerFormKey.currentState?.validate);
                    },
              child: Icon(Icons.clear,
                  color: hideClearButton
                      ? widget.hideClearButtonColor
                      : widget.showClearButtonColor,
                  size: 24),
            ),
          )
        else
          const SizedBox(),
      ],
    );
  }

  InputDecoration buildInputDecoration({required String label}) {
    return InputDecoration(
      enabled: true,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black38,
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black.withOpacity(0.38),
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black38,
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
      ),
      labelText: label,
      helperText: ' ',
      errorText: null,
      //errorStyle: Colors.red,

      filled: true,
    );
  }
}
