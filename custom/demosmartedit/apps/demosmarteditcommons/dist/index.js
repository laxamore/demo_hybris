'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var smarteditcommons = require('smarteditcommons');

(function(){
      var angular = angular || window.angular;
      var SE_NG_TEMPLATE_MODULE = null;
      
      try {
        SE_NG_TEMPLATE_MODULE = angular.module('demosmarteditCommonTemplates');
      } catch (err) {}
      SE_NG_TEMPLATE_MODULE = SE_NG_TEMPLATE_MODULE || angular.module('demosmarteditCommonTemplates', []);
      SE_NG_TEMPLATE_MODULE.run(['$templateCache', function($templateCache) {
        
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

function __metadata(metadataKey, metadataValue) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(metadataKey, metadataValue);
}

var /* @ngInject */ AbAnalyticsService = /** @class */ (function () {
    AbAnalyticsService.$inject = ["$q"];
    function /* @ngInject */ AbAnalyticsService($q) {
        this.$q = $q;
    }
    /* @ngInject */ AbAnalyticsService.prototype.getABAnalyticsForComponent = function () {
        return this.$q.when({
            aValue: 30,
            bValue: 70
        });
    };
    /* @ngInject */ AbAnalyticsService = __decorate([
        smarteditcommons.SeInjectable(),
        __metadata("design:paramtypes", [Function])
    ], /* @ngInject */ AbAnalyticsService);
    return /* @ngInject */ AbAnalyticsService;
}());

var /* @ngInject */ AbAnalyticsModule = /** @class */ (function () {
    function /* @ngInject */ AbAnalyticsModule() {
    }
    /* @ngInject */ AbAnalyticsModule = __decorate([
        smarteditcommons.SeModule({
            providers: [AbAnalyticsService]
        })
    ], /* @ngInject */ AbAnalyticsModule);
    return /* @ngInject */ AbAnalyticsModule;
}());

exports.AbAnalyticsModule = AbAnalyticsModule;
