import { AppService, Input } from './app.service';
export declare class AppController {
    private readonly appService;
    constructor(appService: AppService);
    getResult(input: Input): string;
}
