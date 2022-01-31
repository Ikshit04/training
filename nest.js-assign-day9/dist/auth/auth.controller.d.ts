import { AuthService } from './auth.service';
export declare class AuthController {
    private readonly authServe;
    constructor(authServe: AuthService);
    login(req: any, session: Record<string, any>): Promise<{
        message: string;
    }>;
    logout(session: Record<string, any>): Promise<{
        message: string;
    }>;
}
