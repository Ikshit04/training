import { Body, Controller, Post, UseFilters, UsePipes, ValidationPipe } from '@nestjs/common';
import { AppService, Input } from './app.service';
import { HttpExceptionFilter } from './http_exception.filter';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) { }

  @Post()
  @UseFilters(new HttpExceptionFilter())
  @UsePipes(ValidationPipe)
  getResult(@Body() input: Input): string {
    return this.appService.solve(input.str, input.n);
  }
}
