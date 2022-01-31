import { Injectable, Session, UnauthorizedException } from '@nestjs/common';
import { UsersService } from 'src/users/users.service';

@Injectable()
export class AuthService {
    constructor(private usersService: UsersService) { }

    async validateUser(username: string, password: string, @Session() session: Record<string, any>): Promise<any> {
        const user = await this.usersService.findOne(username);
        if (user && user.password === password) {
            const { username, password, ...rest } = user;
            this.setAuthSession(session, user.id);
            return rest;
        }
        return null;
    }
    async setAuthSession(@Session() session: Record<string, any>, id: Number) {
        session.userId = id;
    }
}
