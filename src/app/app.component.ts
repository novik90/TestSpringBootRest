import {Component, OnInit} from '@angular/core';
import {Greeting} from "./greeting";
import {User} from "./user";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  title = 'Test App';
  greeting: Greeting = new Greeting(null, null);
  user: User = new User(null, null);

  constructor() {
  }

  ngOnInit(): void {
  }
}
