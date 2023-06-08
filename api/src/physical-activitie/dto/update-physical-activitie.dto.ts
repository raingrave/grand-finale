import { PartialType } from '@nestjs/mapped-types';
import { CreatePhysicalActivitieDto } from './create-physical-activitie.dto';

export class UpdatePhysicalActivitieDto extends PartialType(CreatePhysicalActivitieDto) {
    
}
