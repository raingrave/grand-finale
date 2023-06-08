
import { Controller, Get } from '@nestjs/common';
import { DashboardService } from './dashboard.service';

@Controller('dashboard')
export class DashboardController {

    constructor(private readonly dashboardService: DashboardService) {}

    @Get('statistics')
    getStatistics() {
        return this.dashboardService.getStatistics(1);
    }
}
