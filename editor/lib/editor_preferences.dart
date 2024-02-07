import 'package:app_preference/app_preference.dart';
import 'package:editor/setting/editor_settings.dart';
import 'package:app_preference_shared_preferences/app_preference_shared_preferences.dart';

class EditorPreference extends AppPreference<EditorSettings> {
  EditorPreference(
    SharedPreferencesAdapter adapter,
  ) : super.serialized(
          key: "editor_settings",
          adapter: adapter,
          defaultValue: EditorSettings.empty(),
          serializer: (v) => v.toJson(),
          deserializer: EditorSettings.fromJson,
        );
}
