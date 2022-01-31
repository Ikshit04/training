import { ExceptionFilter, Catch, ArgumentsHost, HttpException } from '@nestjs/common';
import { Request, Response } from 'express';
const fs = require('fs')
@Catch(HttpException)
export class HttpExceptionFilter implements ExceptionFilter {
    catch(exception: HttpException, host: ArgumentsHost) {
        const ctx = host.switchToHttp();
        const response = ctx.getResponse<Response>();
        const status = exception.getStatus();

        var log_file_err = fs.createWriteStream(__dirname + '/error.log', { flags: 'a' });
        log_file_err.write('Caught exception: ' + exception.toString() + '\t' + 'Timestamp: ' + new Date().toISOString() + '\n');

        response
            .status(status)
            .json({
                statusCode: status,
                message: exception.message,
                error: exception.name
            });
    }
}