import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

mixin HasDisposable {
  final List<VoidCallback> _disposables = [];

  void addDisposable(VoidCallback disposeAction) {
    _disposables.add(disposeAction);
  }

  void dispose() {
    for (final disposeAction in _disposables) {
      disposeAction();
    }
    _disposables.clear();
  }
}

mixin HasDisposableState<T extends StatefulWidget> on State<T> implements HasDisposable {
  @override
  final List<VoidCallback> _disposables = [];

  @override
  void addDisposable(VoidCallback disposeAction) {
    _disposables.add(disposeAction);
  }

  @override
  void dispose() {
    for (final disposeAction in _disposables) {
      disposeAction();
    }
    _disposables.clear();
    super.dispose();
  }
}

extension HasDisposableExtension on HasDisposable {
  void addReactionDisposer(ReactionDisposer disposer) => addDisposable(disposer.call);
}
