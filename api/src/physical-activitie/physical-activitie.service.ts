import { Injectable } from '@nestjs/common';
import { CreatePhysicalActivitieDto } from './dto/create-physical-activitie.dto';
import { UpdatePhysicalActivitieDto } from './dto/update-physical-activitie.dto';
import { PrismaService } from 'src/prisma-service';

@Injectable()
export class PhysicalActivitieService {

  constructor(private prisma: PrismaService) {}

  async create(createPhysicalActivitieDto: CreatePhysicalActivitieDto) {

    const physicalActivitie = await this.prisma.physicalActivitie.create({
      data: createPhysicalActivitieDto
    });

    return physicalActivitie;
  }

  findAll() {
    return this.prisma.physicalActivitie.findMany();
  }

  findOne(id: number) {
    return this.prisma.physicalActivitie.findUnique({
      where: {
        id: id
      }
    });
  }

  update(id: number, updatePhysicalActivitieDto: UpdatePhysicalActivitieDto) {
    return this.prisma.physicalActivitie.update({
      where: {
        id: id
      },
      data: updatePhysicalActivitieDto
    })
  }

  remove(id: number) {
    return this.prisma.physicalActivitie.delete({
      where: {
        id: id
      }
    });
  }
}
