import { Test, TestingModule } from '@nestjs/testing';
import { PhysicalActivitieController } from './physical-activitie.controller';
import { PhysicalActivitieService } from './physical-activitie.service';

describe('PhysicalActivitieController', () => {
  let controller: PhysicalActivitieController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PhysicalActivitieController],
      providers: [PhysicalActivitieService],
    }).compile();

    controller = module.get<PhysicalActivitieController>(PhysicalActivitieController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
