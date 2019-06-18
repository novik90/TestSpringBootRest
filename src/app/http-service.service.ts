import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {User} from "./user";

@Injectable({
  providedIn: 'root'
})
export class HttpService {
  private baseUrl: string = 'http://localhost:8080/';

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getByUrl(ulr: string) {
    return this.httpClient.get(this.baseUrl + ulr);
  }

  post(ulr: string, user: User) {
    const body = {
      name: user.name,
      surname: user.surname,
      age: user.age
    };
    return this.httpClient.post(this.baseUrl + ulr, body);
  }
}
