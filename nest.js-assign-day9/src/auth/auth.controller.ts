import { Controller, Get, Post, Request, Session, UnauthorizedException } from '@nestjs/common';
import { AuthService } from './auth.service';

@Controller()
export class AuthController {
    constructor(private readonly authServe: AuthService) { };
    @Post('login') async login(@Request() req, @Session() session: Record<string, any>) {
        if (session.userId) {
            return {
                'message': 'Already logged in, logout before logging in again'
            };
        }
        const temp = await this.authServe.validateUser(req.body.username, req.body.password, session);
        if (temp) {
            return {
                'message': 'Success'
            };
        }
        else throw new UnauthorizedException();

    }
    @Get('logout') async logout(@Session() session: Record<string, any>) {
        if (session.userId) {
            session.destroy();
            return {
                'message': 'Success'
            };
        }
        else return {
            'message': 'Already logged out'
        };
    }
}
