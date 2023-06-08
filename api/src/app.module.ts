import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PhysicalActivitieModule } from './physical-activitie/physical-activitie.module';
import { UsersModule } from './users/users.module';

@Module({
  imports: [AppModule, PhysicalActivitieModule, UsersModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
