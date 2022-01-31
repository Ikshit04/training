import { Controller, ForbiddenException, Get, NotFoundException, Session, UseGuards } from '@nestjs/common';
import { AuthGuard } from './app.guards';
import { AppService } from './app.service';
import { UsersService } from './users/users.service';

@Controller('')
@UseGuards(AuthGuard)
export class AppController {
  constructor(private readonly appService: AppService, private readonly usersService: UsersService) { }

  @Get('')
  async getHello(@Session() session: Record<string, any>): Promise<string> {
    const name = await this.usersService.findById(session.userId);
    return this.appService.getHello(name);
  }

  @Get('test')
  test(): string {
    return "Hello from test";
  }
}
