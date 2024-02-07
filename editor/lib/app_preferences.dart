import 'package:app_preference/app_preference.dart';
import 'package:app_preference_shared_preferences/app_preference_shared_preferences.dart';
import 'package:editor/setting/ai_connection_option.dart';

class AiConnectionPreference extends AppPreference<AiConnectionOption> {
  AiConnectionPreference(
    SharedPreferencesAdapter adapter,
  ) : super.serialized(
          key: "api_connection",
          adapter: adapter,
          defaultValue: const AiConnectionOption.none(),
          serializer: (v) => v.toJson(),
          deserializer: AiConnectionOption.fromJson,
        );
}

class BackgroundPreference extends AppPreference<String> {
  BackgroundPreference(
    SharedPreferencesAdapter adapter,
  ) : super.direct(
          adapter: adapter,
          key: "background",
          defaultValue: "",
        );
}
