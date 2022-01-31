import { UsersService } from 'src/users/users.service';
export declare class AuthService {
    private usersService;
    constructor(usersService: UsersService);
    validateUser(username: string, password: string, session: Record<string, any>): Promise<any>;
    setAuthSession(session: Record<string, any>, id: Number): Promise<void>;
}
