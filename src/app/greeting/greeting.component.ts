import {Component, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";
import {Greeting} from "../greeting";
import {FormControl, FormGroup} from "@angular/forms";

@Component({
  selector: 'app-greeting',
  templateUrl: './greeting.component.html',
  styleUrls: ['./greeting.component.css']
})
export class GreetingComponent implements OnInit {
  arrGreeting: Greeting[];

  greetingForm = new FormGroup({
    name: new FormControl(''),
    lastName: new FormControl('')
  });

  constructor(
    private http: HttpService
  ) {
  }

  ngOnInit(): void {
    this.http.getByUrl(`greeting`).subscribe((response: Greeting[]) => {
      this.arrGreeting = response;
    });
  }

  onClick() {
    this.http
      .postGreeting(`greeting`, this.greetingForm.value)
      .subscribe((response: Greeting[]) => {
        this.arrGreeting = response;
      });
  }
}
