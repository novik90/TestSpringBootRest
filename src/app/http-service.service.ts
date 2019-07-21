import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {Greeting} from "./greeting";

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json'
  })
};

@Injectable({
  providedIn: 'root'
})
export class HttpService {
  private baseUrl: string = 'http://localhost:8080/';

  constructor(
    private httpClient: HttpClient
  ) {
  }

  getByUrl(url: string) {
    return this.httpClient.get(this.baseUrl + url);
  }

  postGreeting(url: string, greeting: Greeting) {
    const body = {
      name: greeting.name,
      lastName: greeting.lastName
    };
    return this.httpClient.post(this.baseUrl + url, body);
  }
}
