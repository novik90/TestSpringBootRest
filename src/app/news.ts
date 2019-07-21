import {User} from "./user";

export class News {
  constructor(
    public id: number,
    public title: string,
    public description: string,
    public user: User,
    public date: Date
  )
  {
  }
}
