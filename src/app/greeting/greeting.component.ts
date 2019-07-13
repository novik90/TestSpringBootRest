import {Component, Input, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";
import {Greeting} from "../greeting";

@Component({
  selector: 'app-greeting',
  templateUrl: './greeting.component.html',
  styleUrls: ['./greeting.component.css']
})
export class GreetingComponent implements OnInit {
  selectedGreeting: Greeting;
  arrGreeting: Greeting[];

  constructor(
    private http: HttpService
  ) {
  }

  onSelect(greeting: Greeting): void {
    console.log(greeting);
    this.selectedGreeting = greeting;
  }

  ngOnInit(): void {
    this.http.getByUrl(`greeting`).subscribe((response: Greeting[]) => {
      this.arrGreeting = response;
    })
  }
}
