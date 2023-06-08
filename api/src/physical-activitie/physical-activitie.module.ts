import { Module } from '@nestjs/common';
import { PhysicalActivitieService } from './physical-activitie.service';
import { PhysicalActivitieController } from './physical-activitie.controller';
import { PrismaService } from 'src/prisma-service';

@Module({
  controllers: [PhysicalActivitieController],
  providers: [PhysicalActivitieService, PrismaService]
})
export class PhysicalActivitieModule {}
