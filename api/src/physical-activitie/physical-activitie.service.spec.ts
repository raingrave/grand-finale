import { Test, TestingModule } from '@nestjs/testing';
import { PhysicalActivitieService } from './physical-activitie.service';

describe('PhysicalActivitieService', () => {
  let service: PhysicalActivitieService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PhysicalActivitieService],
    }).compile();

    service = module.get<PhysicalActivitieService>(PhysicalActivitieService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
