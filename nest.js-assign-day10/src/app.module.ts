import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService, Input } from './app.service';
import { HttpExceptionFilter } from './http_exception.filter';

@Module({
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule { }
