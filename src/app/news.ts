import {Author} from "./author";

export class News {
  constructor(
    public id: number,
    public title: string,
    public description: string,
    public author: Author,
    public date: Date
  )
  {
  }
}
