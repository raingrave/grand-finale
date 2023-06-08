import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma-service';

@Injectable()
export class DashboardService {
    constructor(prisma: PrismaService) {}

    getStatistics(userId) {
        return {
            physicalActivities: {
                user_id: userId,
                pending: 21,
                finished: 35
            }
        };
    }
}
