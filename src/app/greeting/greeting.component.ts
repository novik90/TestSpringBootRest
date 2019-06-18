import {Component, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";
import {Greeting} from "../greeting";

@Component({
  selector: 'app-greeting',
  templateUrl: './greeting.component.html',
  styleUrls: ['./greeting.component.css']
})
export class GreetingComponent implements OnInit {
  name: string;
  greeting: Greeting = new Greeting(null, null);

  constructor(
    private httpService: HttpService
  ) {
  }

  sendName() {
    this.httpService.getByUrl(`greeting?name=${this.name}`).subscribe((response: Greeting) => {
      this.greeting = response;
    });
  }

  ngOnInit(): void {
  }

}
