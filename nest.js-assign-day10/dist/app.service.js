"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AppService = exports.Input = void 0;
const common_1 = require("@nestjs/common");
const class_validator_1 = require("@nestjsi/class-validator");
class Input {
}
__decorate([
    (0, class_validator_1.IsPositiveInt)(),
    __metadata("design:type", Number)
], Input.prototype, "n", void 0);
__decorate([
    (0, class_validator_1.IsNotEmptyString)(),
    __metadata("design:type", String)
], Input.prototype, "str", void 0);
exports.Input = Input;
let AppService = class AppService {
    solve(str, n) {
        if (str.length <= n) {
            throw new common_1.BadRequestException('Invalid input');
        }
        let ans = str.substring(str.length - n, str.length) + str.substring(0, str.length - n);
        return ans;
    }
};
AppService = __decorate([
    (0, common_1.Injectable)()
], AppService);
exports.AppService = AppService;
//# sourceMappingURL=app.service.js.map