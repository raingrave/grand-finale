import { Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { PrismaService } from 'src/prisma-service';

@Injectable()
export class UsersService {

  constructor(private prisma: PrismaService) {
    this.prisma = prisma;
  }

  create(createUserDto: CreateUserDto) {
    return this.prisma.user.create({
      data: createUserDto
    })
  }

  findAll() {
    return this.prisma.user.findMany();
  }

  findOne(id: number) {
    return this.prisma.user.findUnique({
      where: {
        id: id
      }
    })
  }

  async findUser(email: string) {
    return this.prisma.user.findUnique({
      where: {
        email: email
      }
    })
  }

  update(id: number, updateUserDto: UpdateUserDto) {
    return this.prisma.user.update({
      data: updateUserDto,
      where: {
        id: id
      }
    })
  }

  remove(id: number) {
    return this.prisma.user.delete({
      where: {
        id: id
      }
    })
  }
}