"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.UsersService = void 0;
const common_1 = require("@nestjs/common");
let UsersService = class UsersService {
    constructor() {
        this.users = [
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
    }
    async findOne(username) {
        return this.users.find(user => user.username === username);
    }
    async findById(id) {
        return this.users.find(user => user.id === id).name;
    }
};
UsersService = __decorate([
    (0, common_1.Injectable)()
], UsersService);
exports.UsersService = UsersService;
//# sourceMappingURL=users.service.js.map