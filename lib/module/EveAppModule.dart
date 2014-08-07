part of eve_mission;

class EveAppModule extends Module {
  EveAppModule(){
    // check debug status
    if(EveAppConfig.statusDebugAll){
      print('module running');
    }
    // bind resources
    bind(EveAppCtrl);
    bind(EveAppNavigation);
  }
}
