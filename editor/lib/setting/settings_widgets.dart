import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  final List<Widget> children;

  const SettingsSection({super.key, required this.children});

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: children,
          ),
        ),
      );
}

class SettingsGap extends StatelessWidget {
  final double gap;

  const SettingsGap({super.key, required this.gap});

  factory SettingsGap.small() => const SettingsGap(gap: 16);
  factory SettingsGap.medium() => const SettingsGap(gap: 24);
  factory SettingsGap.large() => const SettingsGap(gap: 48);

  @override
  Widget build(BuildContext context) => SizedBox(height: gap, width: gap);
}

class SettingsButtonsRow extends StatelessWidget {
  final Widget? resetChild;
  final VoidCallback? onReset;
  final Widget? submitChild;
  final VoidCallback? onSubmit;

  const SettingsButtonsRow({
    super.key,
    this.resetChild,
    this.submitChild,
    required this.onReset,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FilledButton.tonal(onPressed: onReset, child: resetChild ?? const Text('Reset')),
          const SizedBox(width: 8),
          FilledButton(onPressed: onSubmit, child: submitChild ?? const Text('Save')),
        ],
      );
}
