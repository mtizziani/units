part of eve_mission;

@Controller(
    selector:   "[ctrl]",
    publishAs:  "ctrl"
)
class EveAppCtrl {
  bool _debug;
  bool _activeStatus = false;
  String _selectedLanguage;
  String _title;

  get title => _title;
  get selectedLanguage => _selectedLanguage;
  get isActive => _activeStatus;

  set title(String value) {
    _title = value;
  }

  EveAppCtrl(){
    init();
    if(_debug){
      print('controller running');
    }
  }

  /**
   * initial method for setting required attributes
   */
  void init(){
    // check debug option
    if(EveAppConfig.statusDebugAll){
      _debug = EveAppConfig.statusDebugAll;
    } else {
      _debug = EveAppConfig.statusDebugController;
    }

    // set attributes for start
    _title = EveAppConfig.defaultTitle;
    _selectedLanguage = EveAppConfig.defaultLanguage;
  }

  void disableDebug(){
    _debug = false;
  }
}