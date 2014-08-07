part of eve_mission;

class EveAppConfig{
  static bool get statusDebugAll => false;
  static bool get statusDebugController => true;
  static bool get statusDebugNavigation => true;

  static String get defaultTitle => "EvE Mission Control";
  static String get defaultLanguage => "en";
}
