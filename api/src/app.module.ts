import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { PhysicalActivitieModule } from './physical-activitie/physical-activitie.module';
import { UsersModule } from './users/users.module';
import { AuthModule } from './auth/auth.module';

@Module({
  imports: [AppModule, PhysicalActivitieModule, UsersModule, AuthModule],
  controllers: [AppController]
})
export class AppModule {}
