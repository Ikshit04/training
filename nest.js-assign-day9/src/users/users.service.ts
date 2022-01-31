import { Injectable } from '@nestjs/common';

export type User = {
    id: number,
    name: string,
    username: string,
    password: string
}

@Injectable()
export class UsersService {
    private readonly users: User[] = [
        {
            id: 1,
            name: 'Ikshit',
            username: 'ikshit',
            password: 'ikshit_pass'
        },
        {
            id: 2,
            name: 'Abhishek',
            username: 'abhi',
            password: 'abhi_pass'
        },
        {
            id: 3,
            name: 'Sachin',
            username: 'sachin',
            password: 'sachin_pass'
        },
        {
            id: 4,
            name: 'Goutam',
            username: 'goutam',
            password: 'goutam_pass'
        }
    ];
    async findOne(username: string): Promise<User | undefined> {
        return this.users.find(user => user.username === username);
    }
    async findById(id: number): Promise<string | undefined> {
        return this.users.find(user => user.id === id).name;
    }
}
