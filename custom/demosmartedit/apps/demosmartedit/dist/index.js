'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var smarteditcommons = require('smarteditcommons');
var demosmarteditcommons = require('demosmarteditcommons');
var core = require('@angular/core');
var platformBrowser = require('@angular/platform-browser');
var _static = require('@angular/upgrade/static');

/*
 * Copyright (c) 2021 SAP SE or an SAP affiliate company. All rights reserved.
 */
angular
    .module('abAnalyticsDecoratorModule', [
        'demosmarteditTemplates',
        'ui.bootstrap',
        'pascalprecht.translate',
        'abAnalyticsDecoratorControllerModule'
    ])
    .directive('abAnalyticsDecorator', function () {
        return {
            templateUrl: 'abAnalyticsDecoratorTemplate.html',
            restrict: 'C',
            transclude: true,
            replace: false,
            controller: 'abAnalyticsDecoratorController',
            controllerAs: '$ctrl',
            bindToController: {
                smarteditComponentId: '@',
                smarteditComponentType: '@',
                smarteditProperties: '@',
                active: '<'
            }
        };
    });

/*
 * Copyright (c) 2021 SAP SE or an SAP affiliate company. All rights reserved.
 */
angular
    .module('abAnalyticsDecoratorControllerModule', ['abAnalyticsModule'])
    .controller('abAnalyticsDecoratorController', ["abAnalyticsService", function (abAnalyticsService) {
        this.title = 'AB Analytics';
        this.contentTemplate = 'abAnalyticsDecoratorContentTemplate.html';

        this.$onInit = function () {
            abAnalyticsService.getABAnalyticsForComponent(this.smarteditComponentId).then(
                function (analytics) {
                    this.abAnalytics = 'A: ' + analytics.aValue + ' B: ' + analytics.bValue;
                }.bind(this)
            );
        };
    }]);

(function(){
      var angular = angular || window.angular;
      var SE_NG_TEMPLATE_MODULE = null;
      
      try {
        SE_NG_TEMPLATE_MODULE = angular.module('demosmarteditTemplates');
      } catch (err) {}
      SE_NG_TEMPLATE_MODULE = SE_NG_TEMPLATE_MODULE || angular.module('demosmarteditTemplates', []);
      SE_NG_TEMPLATE_MODULE.run(['$templateCache', function($templateCache) {
         
    $templateCache.put(
        "abAnalyticsDecoratorContentTemplate.html", 
        "<div><p><strong>{{ $ctrl.smarteditComponentId | limitTo:16 }}{{ $ctrl.smarteditComponentId.length > 16 ? '...' : ''}}</strong></p><p>{{ $ctrl.smarteditComponentType | limitTo:16 }}{{ $ctrl.smarteditComponentType.length > 16 ? '...' : ''}}</p><p>{{ $ctrl.abAnalytics }}</p></div>"
    );
     
    $templateCache.put(
        "abAnalyticsDecoratorTemplate.html", 
        "<div><div class=\"row\" data-uib-popover-template=\"$ctrl.contentTemplate\" data-popover-title=\"{{$ctrl.title}}\" data-popover-placement=\"'top'\" data-popover-trigger=\"'mouseenter'\"><div data-ng-transclude></div></div></div>"
    );
    
      }]);
    })();

/*! *****************************************************************************
Copyright (c) Microsoft Corporation.

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
***************************************************************************** */

function __decorate(decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
}

/**
 * @ngdoc overview
 * @name demosmartedit
 * @description
 * Placeholder for documentation
 */
var /* @ngInject */ Demosmartedit = /** @class */ (function () {
    function /* @ngInject */ Demosmartedit() {
    }
    /* @ngInject */ Demosmartedit = __decorate([
        smarteditcommons.SeModule({
            imports: [
                demosmarteditcommons.AbAnalyticsModule,
                'smarteditServicesModule',
                'decoratorServiceModule',
                'abAnalyticsDecoratorModule' // Decorators must be added as dependencies to be wired into SmartEdit
            ],
            initialize: ["decoratorService", "featureService", "perspectiveService", function (decoratorService, featureService, perspectiveService) {
                // Parameters are injected factory methods
                'ngInject';
                /// /////////////////////////////////////////////////
                // Create Decorator
                /// /////////////////////////////////////////////////
                // Use the decoratorService.addMappings() method to associate decorators
                // The keys may be given as strings or as regex
                decoratorService.addMappings({
                    SimpleResponsiveBannerComponent: ['abAnalyticsDecorator'],
                    CMSParagraphComponent: ['abAnalyticsDecorator']
                });
                // Register new decorators the the featureService
                // The key MUST be the same name as the directive
                featureService.addDecorator({
                    key: 'abAnalyticsDecorator',
                    nameI18nKey: 'ab.analytics.feature.name'
                });
                /// /////////////////////////////////////////////////
                // Create  Perspective and assign features.
                /// /////////////////////////////////////////////////
                // Group the features created above in a perspective. This will enable the features once the user selects this new perspective.
                perspectiveService.register({
                    key: 'abAnalyticsPerspective',
                    nameI18nKey: 'ab.analytics.perspective.name',
                    descriptionI18nKey: 'ab.analytics.perspective.description',
                    features: ['abAnalyticsToolbarItem', 'abAnalyticsDecorator'],
                    perspectives: []
                });
            }]
        })
    ], /* @ngInject */ Demosmartedit);
    return /* @ngInject */ Demosmartedit;
}());

var DemosmarteditModule = /** @class */ (function () {
    function DemosmarteditModule() {
    }
    DemosmarteditModule = __decorate([
        smarteditcommons.SeEntryModule('demosmartedit'),
        core.NgModule({
            imports: [platformBrowser.BrowserModule, _static.UpgradeModule],
            declarations: [],
            entryComponents: [],
            providers: []
        })
    ], DemosmarteditModule);
    return DemosmarteditModule;
}());

exports.Demosmartedit = Demosmartedit;
exports.DemosmarteditModule = DemosmarteditModule;
