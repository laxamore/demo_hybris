import { IQService } from 'angular';
export declare class AbAnalyticsService {
    private $q;
    constructor($q: IQService);
    getABAnalyticsForComponent(): angular.IPromise<{
        aValue: number;
        bValue: number;
    }>;
}
