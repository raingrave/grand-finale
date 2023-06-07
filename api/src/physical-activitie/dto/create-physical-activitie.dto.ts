
export class CreatePhysicalActivitieDto {
    title: string
    type: string

    constructor (title: string, type: string) {
        this.title = title;
    }
}
