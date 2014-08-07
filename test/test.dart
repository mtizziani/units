library eve_mission_testing;

import "dart:html";
import "dart:async";
import "dart:convert";
import "dart:collection";

import "package:angular/angular.dart";
import "package:angular/mock/module.dart";
import "package:di/di.dart";
import "package:unittest/unittest.dart";

import "../web/main.dart";

part "../lib/config/EveTestConfig.dart";

main(){
  EveAppCtrl ctrl;
  setUp((){
    setUpInjector();
    module((Module mod) => mod.install(new EveAppModule()));
    inject((EveAppCtrl inj_ctrl){
      ctrl = inj_ctrl;
    });
    ctrl.disableDebug();
  });
  tearDown(tearDownInjector);

  group('basic tests', (){
    test('init', (){
      expect(true, true);
    });
  });


  group('controller', (){
    test('should be not null', (){
      expect(ctrl, isNotNull);
    });
    test('should be active', (){
      expect(ctrl.isActive, isTrue);
    });

  });

  group('navigation component', (){
    EveAppNavigation cmp;
    setUp((){
      inject((EveAppNavigation inj_cmp){
        cmp = inj_cmp;
      });
    });

    test('should be not null', (){
      expect(cmp, isNotNull);
    });

    test('ctrl should not be null', (){
      expect(ctrl, isNotNull);
    });

    test('cmp should return ctrl title', (){
      expect(cmp.title, equals(ctrl.title + ' - Navigation'));
    });

    test('ctrl should have same title as cmp', (){
      String testString = 'test';
      cmp.titleToCtrl(testString);
      expect(ctrl.title, equals(testString));
    });

  });
}