'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var smarteditcommons = require('smarteditcommons');
var http = require('@angular/common/http');
var core = require('@angular/core');
var platformBrowser = require('@angular/platform-browser');
var _static = require('@angular/upgrade/static');

/*
 * Copyright (c) 2021 SAP SE or an SAP affiliate company. All rights reserved.
 */
angular
    .module('abAnalyticsToolbarItemModule', ['demosmarteditContainerTemplates'])
    .component('abAnalyticsToolbarItem', {
        templateUrl: 'abAnalyticsToolbarItemTemplate.html'
    });

(function(){
      var angular = angular || window.angular;
      var SE_NG_TEMPLATE_MODULE = null;
      
      try {
        SE_NG_TEMPLATE_MODULE = angular.module('demosmarteditContainerTemplates');
      } catch (err) {}
      SE_NG_TEMPLATE_MODULE = SE_NG_TEMPLATE_MODULE || angular.module('demosmarteditContainerTemplates', []);
      SE_NG_TEMPLATE_MODULE.run(['$templateCache', function($templateCache) {
         
    $templateCache.put(
        "abAnalyticsToolbarItemTemplate.html", 
        "<h2>AB Analytics</h2><p>This is a dummy toolbar item used to demonstrate functionality.</p>"
    );
     
    $templateCache.put(
        "abAnalyticsToolbarItemWrapperTemplate.html", 
        "<ab-analytics-toolbar-item></ab-analytics-toolbar-item>"
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
 * @name demosmarteditContainer
 * @description
 * Placeholder for documentation
 */
var /* @ngInject */ DemosmarteditContainer = /** @class */ (function () {
    function /* @ngInject */ DemosmarteditContainer() {
    }
    /* @ngInject */ DemosmarteditContainer = __decorate([
        smarteditcommons.SeModule({
            imports: ['smarteditServicesModule', 'abAnalyticsToolbarItemModule'],
            initialize: ["featureService", function (featureService) {
                'ngInject';
                /// /////////////////////////////////////////////////
                // Create Toolbar Item
                /// /////////////////////////////////////////////////
                // Create the toolbar item as a feature.
                featureService.addToolbarItem({
                    toolbarId: 'smartEditPerspectiveToolbar',
                    key: 'abAnalyticsToolbarItem',
                    type: 'HYBRID_ACTION',
                    nameI18nKey: 'ab.analytics.toolbar.item.name',
                    priority: 2,
                    section: 'left',
                    iconClassName: 'icon-message-information se-toolbar-menu-ddlb--button__icon',
                    include: 'abAnalyticsToolbarItemWrapperTemplate.html'
                });
            }]
        })
    ], /* @ngInject */ DemosmarteditContainer);
    return /* @ngInject */ DemosmarteditContainer;
}());

var /* @ngInject */ DummyInterceptor = /** @class */ (function () {
    function /* @ngInject */ DummyInterceptor() {
    }
    /* @ngInject */ DummyInterceptor.prototype.intercept = function (request, next) {
        console.log('DummyInterceptor - request url:', request.url);
        return next.handle(request);
    };
    DummyInterceptor.prototype.intercept.$inject = ["request", "next"];
    /* @ngInject */ DummyInterceptor = __decorate([
        core.Injectable()
    ], /* @ngInject */ DummyInterceptor);
    return /* @ngInject */ DummyInterceptor;
}());

var DemosmarteditContainerModule = /** @class */ (function () {
    function DemosmarteditContainerModule() {
    }
    DemosmarteditContainerModule = __decorate([
        smarteditcommons.SeEntryModule('demosmarteditContainer'),
        core.NgModule({
            imports: [platformBrowser.BrowserModule, _static.UpgradeModule],
            declarations: [],
            entryComponents: [],
            providers: [
                {
                    provide: http.HTTP_INTERCEPTORS,
                    useClass: DummyInterceptor,
                    multi: true
                }
            ]
        })
    ], DemosmarteditContainerModule);
    return DemosmarteditContainerModule;
}());

exports.DemosmarteditContainer = DemosmarteditContainer;
exports.DemosmarteditContainerModule = DemosmarteditContainerModule;
