import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'copilot_editing.freezed.dart';

@freezed
class CopilotEditing with _$CopilotEditing {
  const CopilotEditing._();

  // start editing...
  const factory CopilotEditing.startEditing({
    required String original,
    required ValueChanged<String> onEditComplete,
  }) = _StartEditing;

  // prompting
  const factory CopilotEditing.prompting({
    required String original,
    required ValueChanged<String> onEditComplete,
    required String prompt,
  }) = _Prompting;

  // Accept / Cancel / Regenerate
  const factory CopilotEditing.needConfirmation({
    required String original,
    required ValueChanged<String> onEditComplete,
    required String prompt,
    required String updated,
  }) = _NeedConfirmation;

  bool get isWaitingForUserAction => (isStartEditing || isPrompting) && original.isNotEmpty;

  bool get isPromptReady => maybeWhen(
        prompting: (original, onEditComplete, prompt) => prompt.isNotEmpty,
        orElse: () => false,
      );

  bool get isStartEditing => this is _StartEditing;
  bool get isPrompting => this is _Prompting;
  bool get isNeedConfirmation => this is _NeedConfirmation;

  String get prompt => maybeWhen(
        prompting: (original, onEditComplete, prompt) => prompt,
        needConfirmation: (original, onEditComplete, prompt, updated) => prompt,
        orElse: () => '',
      );

  String get updatedValue => maybeWhen(
        needConfirmation: (original, onEditComplete, prompt, updated) => updated,
        orElse: () => '',
      );
}
