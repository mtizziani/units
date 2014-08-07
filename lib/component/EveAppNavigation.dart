part of eve_mission;

@Component(
  selector: "navigation",
  publishAs:  "cmpNav",
  templateUrl: "template/EveAppNavigation.html"
)
class EveAppNavigation {
  bool _debug;
  EveAppCtrl _ctrl;
  String _title;

  get title => _title;
  set title(String value){
    _title = value;
  }

  EveAppNavigation(this._ctrl) {
    init();
    if(_debug){
      print('component navigation running');
    }
  }

  void init(){
    if(EveAppConfig.statusDebugAll){
      _debug = true;
    } else {
      _debug = EveAppConfig.statusDebugNavigation;
    }
    title = _ctrl.title + " - Navigation";
  }

  void titleToCtrl(String value){
    _ctrl.title = value;
  }
}
