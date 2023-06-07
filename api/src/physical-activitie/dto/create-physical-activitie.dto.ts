
export class CreatePhysicalActivitieDto {
    title: string
    type: string
    finished: boolean

    constructor (title: string, type: string, finished: boolean) {
        this.title = title;
        this.type = type;
        this.finished = finished;
    }
}
