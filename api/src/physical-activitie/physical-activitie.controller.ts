import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { PhysicalActivitieService } from './physical-activitie.service';
import { CreatePhysicalActivitieDto } from './dto/create-physical-activitie.dto';
import { UpdatePhysicalActivitieDto } from './dto/update-physical-activitie.dto';

@Controller('physical-activitie')
export class PhysicalActivitieController {
  constructor(private readonly physicalActivitieService: PhysicalActivitieService) {}

  @Post()
  create(@Body() createPhysicalActivitieDto: CreatePhysicalActivitieDto) {
    return this.physicalActivitieService.create(createPhysicalActivitieDto);
  }

  @Get()
  findAll() {
    return this.physicalActivitieService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.physicalActivitieService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updatePhysicalActivitieDto: UpdatePhysicalActivitieDto) {
    return this.physicalActivitieService.update(+id, updatePhysicalActivitieDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.physicalActivitieService.remove(+id);
  }
}
