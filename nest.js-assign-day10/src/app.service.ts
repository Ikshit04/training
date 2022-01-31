import { BadRequestException, Injectable } from '@nestjs/common';
import { IsPositiveInt, IsNotEmptyString } from '@nestjsi/class-validator';


export class Input {
  @IsPositiveInt()
  n: number;

  @IsNotEmptyString()
  str: string;
}

@Injectable()
export class AppService {
  solve(str: string, n: number): string {
    if (str.length <= n) {
      throw new BadRequestException('Invalid input');
    }
    let ans: string = str.substring(str.length - n, str.length) + str.substring(0, str.length - n);
    return ans;
  }
}
