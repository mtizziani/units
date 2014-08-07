library eve_mission;

// import dart libs
import "dart:html";
import "dart:convert";
import "dart:collection";
import "dart:async";

// import external libs
import "package:angular/application_factory.dart";
import "package:angular/angular.dart";
import "package:intl/intl.dart";

// import internal libs
part "../lib/config/EveAppConfig.dart";
part "../lib/module/EveAppModule.dart";
part "../lib/controller/EveAppCtrl.dart";
part "../lib/component/EveAppNavigation.dart";

main(){
  if(EveAppConfig.statusDebugAll){
    print('plain dart running');
  }
  applicationFactory().addModule(new EveAppModule()).run();
}


