import 'package:built_collection/built_collection.dart';
import 'package:editor/character/model/st2character_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trigger.freezed.dart';

enum ActionType {
  updateStatus,
  displayMessage,
  ;
}

@freezed
class StatusValue with _$StatusValue {
  const factory StatusValue.string({
    @Default('') required String stringValue,
  }) = _StringValue;

  const factory StatusValue.number({
    @Default(0) required double numberValue,
  }) = _NumberValue;

  const factory StatusValue.boolean({
    @Default(false) required bool booleanValue,
  }) = _BooleanValue;
}

@freezed
class Status with _$Status {
  const factory Status({
    required String name,
    required StatusValue value,
    // status trigger
    Trigger? valueTrigger,
  }) = _Status;
}

@freezed
class Player with _$Player {
  const factory Player({
    required String name,
    required BuiltMap<String, Status> statusMap,
  }) = _Player;
}

@freezed
class Action with _$Action {
  const factory Action.setStatus({
    required String status,
    required StatusValue value,
  }) = _SetStatus;

  const factory Action.addNumberStatus({
    required String status,
    required double value,
  }) = _AddNumberStatus;
}

@freezed
class Trigger with _$Trigger {
  const factory Trigger({
    required String condition,
    required Action action,
    required bool executed,
  }) = _Trigger;

  // check condition is met, then action is taken
  const factory Trigger.statusTrigger({
    required Status targetStatus, // on original status is updated to target status
    required Action action,
    required bool executed,
  }) = _StatusTrigger;
}

@freezed
class Context with _$Context {
  const factory Context({
    // spec of the current story
    required ST2CharacterModel character,
    // the context of the current playing message history
    required BuiltList<DialogMessage> messageHistory,
  }) = _Context;
}

@freezed
class Runtime with _$Runtime {
  const factory Runtime({
    required Player player,
    required BuiltList<Trigger> triggers,
    required Context context,
  }) = _Runtime;
}

extension RuntimeX on Runtime {
  Runtime updateStatus(String statusName, StatusValue newValue) {
    if (!player.statusMap.containsKey(statusName)) {
      return this;
    }

    final updatedPlayer = player.copyWith(
        statusMap: player.statusMap
            .rebuild((p0) => p0[statusName] = p0[statusName]!.copyWith(value: newValue)));
    return copyWith(player: updatedPlayer);
  }

  Runtime performAction(Action action) {
    if (action is _SetStatus) {
      return updateStatus(action.status, action.value);
    } else if (action is _AddNumberStatus) {
      if (player.statusMap.containsKey(action.status)) {
        final currentStatus = player.statusMap[action.status]!;
        if (currentStatus.value is _NumberValue) {
          final currentValue = (currentStatus.value as _NumberValue).numberValue;
          final newValue = StatusValue.number(numberValue: currentValue + action.value);
          return updateStatus(action.status, newValue);
        }
      }
    }
    return this;
  }

  Runtime executeTrigger(Trigger trigger) {
    if (!trigger.executed && _checkCondition(trigger.condition)) {
      return performAction(trigger.action);
    }
    return this;
  }

  bool _checkCondition(String condition) {
    // Implement your condition checking logic here
    // For now, we'll just return true for simplicity
    return true;
  }
}
