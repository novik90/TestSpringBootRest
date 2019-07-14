export class News {
  constructor(
    public id: number,
    public title: string,
    public description: string,
    public author: string,
    public topic: string,
    public date: Date
  )
  {
  }
}
